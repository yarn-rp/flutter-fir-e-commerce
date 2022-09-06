import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/state_manegement/category_cubit/category_cubit.dart';
import 'package:flutter_fir_e_commerce/src/images/presenter/image_selector.dart';

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

class _CategoriesViewState extends State<CategoriesView> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ...state.categoriesSafe.map((e) => Text(e.name)),
              ImageSelector(),
            ],
          );
        },
      ),
    );
  }
}
