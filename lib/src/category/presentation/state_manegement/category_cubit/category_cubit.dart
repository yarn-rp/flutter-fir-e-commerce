import 'package:bloc/bloc.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/use_case/pagination_params.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/get_categories_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.getCategoriesUseCase)
      : super(
          const CategoryState.initial(),
        );

  final GetCategoriesUseCase getCategoriesUseCase;

  Future<void> getCategories({
    int skip = 0,
    int take = 16,
  }) async {
    emit(
      CategoryState.loading(
        categories: state.categoriesSafe,
      ),
    );

    final categoriesOrFailure = await getCategoriesUseCase(
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
            ...state.categoriesSafe,
            ...categories,
          ],
        ),
      ),
    );
  }
}