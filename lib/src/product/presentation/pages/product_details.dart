import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_app_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_buttons/adaptive_button.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/favorite_products_cubit/favorite_products_cubit.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/product_details_cubit/product_details_cubit.dart';

class ProductDetailsPage extends StatelessWidget {
  final String productId;
  const ProductDetailsPage({Key? key, required this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<FavoriteProductsCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<ProductDetailsCubit>(),
        )
      ],
      child: _ProductDetailsView(
        productId: productId,
      ),
    );
  }
}

class _ProductDetailsView extends StatefulWidget {
  final String productId;
  const _ProductDetailsView({Key? key, required this.productId})
      : super(key: key);

  @override
  State<_ProductDetailsView> createState() => __ProductDetailsViewState();
}

class __ProductDetailsViewState extends State<_ProductDetailsView> {
  @override
  void initState() {
    super.initState();
    context.read<ProductDetailsCubit>().getProductDetails(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        if (state is! ProductDetailsSuccess) {
          return AdaptiveScaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return AdaptiveScaffold(
            bottomAppBar: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.black38
                        : Colors.grey.shade200,
                    offset: Offset(0, -2.0),
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 24.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: CupertinoButton(
                      color: state.product.isFavorite
                          ? Theme.of(context).errorColor
                          : Theme.of(context).primaryColor,
                      child: Text(
                        state.product.isFavorite
                            ? 'Remove from Favorites'
                            : 'Add to Favorites',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        switch (state.product.isFavorite) {
                          case true:
                            context
                                .read<FavoriteProductsCubit>()
                                .removeProductFromFavorites(state.product);
                            break;
                          case false:
                            context
                                .read<FavoriteProductsCubit>()
                                .addProductToFavorites(state.product);
                            break;
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
            appBar: AdaptiveAppBar(
              centerTitle: true,
              title: Text(state.product.name),
            ),
            body: ListView(
              children: [
                Image.network(
                  state.product.imageUrl,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${state.product.name} from ${state.product.category.name}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                    color: state.product.category.color,
                                  ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '\$1200.00 ',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                      ),
                      AdaptiveIconButton(
                        onPressed: () {
                          switch (state.product.isFavorite) {
                            case true:
                              context
                                  .read<FavoriteProductsCubit>()
                                  .removeProductFromFavorites(state.product);
                              break;
                            case false:
                              context
                                  .read<FavoriteProductsCubit>()
                                  .addProductToFavorites(state.product);
                              break;
                          }
                        },
                        icon: CircleAvatar(
                          child: Icon(
                            state.product.isFavorite
                                ? CupertinoIcons.heart_fill
                                : CupertinoIcons.heart,
                            color: state.product.isFavorite ? Colors.red : null,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).dividerColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description of the product',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(descriptionText),
                    ],
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}

const descriptionText =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse vel malesuada purus massa mi. Faucibus neque a mi hendrerit.

Audio Technology
Apple-designed dynamic driver
Active Noise Cancellation
Transparency mode
Adaptive EQ
Spatial audio with dynamic head tracking1

Sensors
Optical sensor (each ear cup)
Position sensor (each ear cup)
Case-detect sensor (each ear cup)
Accelerometer (each ear cup)
Gyroscope (left ear cup)

Microphones
Nine microphones total:
Eight microphones for Active Noise Cancellation
Three microphones for voice pickup (two shared with Active Noise Cancellation and one additional microphone)

Chip
Apple H1 headphone chip (each ear cup)

Controls
Digital Crown
Turn for volume control
Press once to play, pause or answer a phone call
Press twice to skip forwards
Press three times to skip back
Press and hold for Siri
Noise control button
Press to switch between Active Noise Cancellation and Transparency mode

Size and Weight2
AirPods Max, including cushions
Weight: 384.8g

Smart Case
Weight: 134.5g

Battery
AirPods Max
Up to 20 hours of listening time on a single charge with Active Noise Cancellation or Transparency mode enabled3
Up to 20 hours of movie playback on a single charge with spatial audio on4
Up to 20 hours of talk time on a single charge5
5 minutes of charge time provides around 1.5 hours of listening time6
AirPods Max with Smart Case

Storage in the Smart Case preserves battery charge in ultra-low-power state
Charging via Lightning connector

Connectivity
Bluetooth 5.0

In the Box
AirPods Max
Smart Case
Lightning to USB-C Cable
Documentation
Accessibility7
Accessibility features help people with disabilities get the most out of their new AirPods Max.

Features include:
Live Listen audio
Headphone levels
Headphone Accommodations

System Requirements8
iPhone and iPod touch models with the latest version of iOS
iPad models with the latest version of iPadOS
Apple Watch models with the latest version of watchOS
Mac models with the latest version of macOS
Apple TV models with the latest version of tvOS''';
