import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
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
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategoriesLoading) {
            return const CircularProgressIndicator.adaptive();
          }
          if (state is CategoriesError) {
            return Center(
              child: Text(state.failure.toString()),
            );
          }
          return ListView(
            children: [
              ...state.categoriesSafe.map(
                (e) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Slidable(
                    // The end action pane is the one at the right or the bottom side.
                    endActionPane: ActionPane(
                      motion: StretchMotion(),
                      children: [
                        // A SlidableAction can have an icon and/or a label.
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Theme.of(context).backgroundColor,
                          foregroundColor: Theme.of(context).errorColor,
                          icon: Icons.delete,
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
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
