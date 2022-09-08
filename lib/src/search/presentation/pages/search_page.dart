import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/widgets/category_card_widget.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/pages/product_page.dart';
import 'package:flutter_fir_e_commerce/src/search/presentation/state_management/search_cubit/search_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
    required this.bloc,
  });

  final SearchCubit bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: const SearchView(),
    );
  }
}

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return AdaptiveScaffold(
          body: ListView(
            children: [
              if (state is SearchInitial)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Start searching',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(fontSize: 24),
                    ),
                  ),
                ),
              ...state.itemsSafe.map(
                (e) {
                  if (e is Category) {
                    return CategoryCardWidget(category: e);
                  }
                  if (e is Product) {
                    return ProductListTile(product: e);
                  }
                  return ListTile(
                    title: Text(e.name),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
