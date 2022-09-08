import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_app_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/core/widgets/domino_effects/domino_reveal.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/favorite_products_cubit/favorite_products_cubit.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/widgets/product_list_tile.dart';

class FavoriteProductsPage extends StatelessWidget {
  const FavoriteProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FavoriteProductsCubit>(),
      child: const _FavoriteProductsView(),
    );
  }
}

class _FavoriteProductsView extends StatefulWidget {
  const _FavoriteProductsView({super.key});

  @override
  State<_FavoriteProductsView> createState() => __FavoriteProductsPageSView();
}

class __FavoriteProductsPageSView extends State<_FavoriteProductsView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteProductsCubit, FavoriteProductsState>(
      builder: (context, state) {
        return AdaptiveScaffold(
          appBar: const AdaptiveAppBar(
            centerTitle: true,
            title: Text('Wishlist'),
          ),
          body: ListView(
            children: [
              ...state.productsSafe.map(
                (e) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ProductListTile(
                    product: e,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
