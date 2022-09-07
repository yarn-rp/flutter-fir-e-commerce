import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dialogs/dialogs.dart';
import 'package:flutter_fir_e_commerce/core/widgets/domino_effects/domino_reveal.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/products_cubit/product_cubit.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductCubit>(),
      child: const ProductsView(),
    );
  }
}

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: FloatingActionButton.extended(
          backgroundColor: Theme.of(context).cardColor,
          label: Text(
            'Create Product',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          onPressed: () {
            context.go('/products/create');
          },
        ),
      ),
      body: BlocConsumer<ProductCubit, ProductState>(
        // ignore: unnecessary_parenthesis
        listener: ((context, state) {
          if (state is ProductsError) {
            Dialoger.showErrorDialog<void>(
              context: context,
              title: 'Error',
              description: state.failure.toString(),
            );
          }
        }),
        builder: (context, state) {
          return ListView(
            children: [
              AnimatedSize(
                duration: Duration(
                  milliseconds: state.productsSafe.isNotEmpty ? 750 : 0,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
                child: state is ProductsLoading
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: SizedBox(
                                height: 36,
                                width: 36,
                                child: CircularProgressIndicator.adaptive(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Theme.of(context).primaryColor,
                                  ),
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
              ),
              ...state.productsSafe.map(
                (e) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: DominoReveal(
                    child: Slidable(
                      // The end action pane is the one at the right or the bottom side.
                      endActionPane: ActionPane(
                        motion: StretchMotion(),
                        children: [
                          // A SlidableAction can have an icon and/or a label.
                          SlidableAction(
                            onPressed: (innerContext) async {
                              final result =
                                  await Dialoger.showTwoChoicesDialog<String>(
                                context: innerContext,
                                title: 'Are you sure?',
                                description:
                                    'Deleting this category is an irreversible action',
                              );
                              log('EL result es $result');
                              if (result == 'Accept') {
                                context.read<ProductCubit>().deleteProduct(e);
                              }
                            },
                            backgroundColor: Theme.of(context).errorColor,
                            foregroundColor: Theme.of(context).backgroundColor,
                            icon: CupertinoIcons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: ProductListTile(
                        product: e,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ProductListTile extends StatelessWidget {
  final Product product;
  const ProductListTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(product.name),
      subtitle: Text(
        product.category.name,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: product.category.color,
            ),
      ),
    );
  }
}
