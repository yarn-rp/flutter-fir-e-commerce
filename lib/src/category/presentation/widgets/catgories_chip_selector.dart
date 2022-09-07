import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/state_manegement/category_cubit/category_cubit.dart';

class CategoryChipSelector extends StatelessWidget {
  const CategoryChipSelector({super.key, required this.onCategoryChanged});

  final void Function(Category? category) onCategoryChanged;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CategoryCubit>(),
      child: _CategoryShipSelectorView(
        key: key,
        onCategoryChanged: onCategoryChanged,
      ),
    );
  }
}

class _CategoryShipSelectorView extends StatefulWidget {
  const _CategoryShipSelectorView({super.key, required this.onCategoryChanged});

  final void Function(Category? category) onCategoryChanged;

  @override
  State<_CategoryShipSelectorView> createState() =>
      __CategoryShipSelectorViewState();
}

class __CategoryShipSelectorViewState extends State<_CategoryShipSelectorView> {
  Category? selection;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CategoryCubit>().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return Wrap(
          spacing: 8,
          children: [
            ...state.categoriesSafe.map(
              (e) {
                return ChoiceChip(
                  selected: e == selection,
                  onSelected: (s) {
                    if (s) {
                      setState(
                        () => selection = e,
                      );
                    } else {
                      setState(() {
                        selection = null;
                      });
                    }
                    return widget.onCategoryChanged(selection);
                  },
                  // backgroundColor: Theme.of(context).cardColor,
                  selectedColor: Theme.of(context).primaryColor,
                  label: Text(e.name),
                );
              },
            )
          ],
        );
      },
    );
  }
}
