import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/shopping_items_cubit/shopping_items_cubit.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/widgets/product_list_tile.dart';

class StoreItemsWidget extends StatelessWidget {
  const StoreItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingItemsCubit, ShoppingItemsState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              'Lorem ipsum dolor sit amet consectetur',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            ...state.itemsSafe?.entries.map<Widget>((entry) {
                  final category = entry.key;
                  final products = entry.value;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      elevation: 0,
                      color: category.color.withOpacity(0.2),
                      borderOnForeground: true,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 120,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.network(
                                  category.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                                ColoredBox(
                                  color: category.color.withOpacity(0.4),
                                ),
                                Center(
                                  child: Text(
                                    category.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        ?.copyWith(
                                      color: Colors.white,
                                      shadows: [
                                        const Shadow(
                                          offset: Offset.infinite,
                                          blurRadius: 4,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ...products.map(
                            (e) => ProductListTile(product: e),
                          )
                        ],
                      ),
                    ),
                  );
                }) ??
                [
                  SizedBox.shrink(),
                ],
          ],
        );
      },
    );
  }
}
