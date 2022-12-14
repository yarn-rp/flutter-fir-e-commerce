import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dialogs/dialogs.dart';
import 'package:flutter_fir_e_commerce/core/widgets/domino_effects/domino_reveal.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/state_manegement/category_cubit/category_cubit.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/widgets/category_card_widget.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CategoryCubit>(),
      child: const CategoriesView(),
    );
  }
}

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().getCategories();
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
            'Create Category',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          onPressed: () {
            context.go('/categories/create');
          },
        ),
      ),
      body: BlocConsumer<CategoryCubit, CategoryState>(
        // ignore: unnecessary_parenthesis
        listener: ((context, state) {
          if (state is CategoriesError) {
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
                  milliseconds: state.categoriesSafe.isNotEmpty ? 750 : 0,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
                child: state is CategoriesLoading
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
              ...state.categoriesSafe.map(
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
                                context.read<CategoryCubit>().deleteCategory(e);
                              }
                            },
                            backgroundColor: Theme.of(context).backgroundColor,
                            foregroundColor: Theme.of(context).errorColor,
                            icon: CupertinoIcons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: CategoryCardWidget(
                        category: e,
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
