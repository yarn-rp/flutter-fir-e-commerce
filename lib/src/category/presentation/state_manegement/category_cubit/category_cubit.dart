import 'package:bloc/bloc.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/use_case/pagination_params.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/delete_category_use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/get_categories_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._getCategoriesUseCase, this._deleteCategoryUseCase)
      : super(
          const CategoryState.initial(),
        );

  final GetCategoriesUseCase _getCategoriesUseCase;
  final DeleteCategoryUseCase _deleteCategoryUseCase;

  Future<void> deleteCategory(Category category) async {
    final currentList = [...state.categoriesSafe];
    final categoryIndex = currentList.indexOf(category);
    emit(
      CategoryState.loaded(
        categories: currentList..remove(category),
      ),
    );

    final deletedOrFailure =
        await _deleteCategoryUseCase(DeleteCategoryParams(id: category.id));

    emit(
      deletedOrFailure.fold(
        (failure) => CategoryState.error(
          failure: failure,
          categories: currentList..insert(categoryIndex, category),
        ),
        (r) => CategoryState.loaded(
          categories: currentList,
        ),
      ),
    );
  }

  Future<void> getCategories({
    int skip = 0,
    int take = 16,
  }) async {
    emit(
      CategoryState.loading(
        categories: state.categoriesSafe,
      ),
    );

    final categoriesOrFailure = await _getCategoriesUseCase(
      PaginationParams(
        skip: skip,
        take: take,
      ),
    );

    emit(
      categoriesOrFailure.fold(
        (failure) => CategoryState.error(
          failure: failure,
          categories: state.categoriesSafe,
        ),
        (categories) => CategoryState.loaded(
          categories: [
            if (skip != 0) ...state.categoriesSafe,
            ...categories,
          ],
        ),
      ),
    );
  }
}
