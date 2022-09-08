import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/use_case/pagination_params.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/get_categories_use_case.dart';

import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/delete_product_use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_products_use_case.dart';
import 'package:flutter_fir_e_commerce/src/search/domain/entities/search_entity.dart';
import 'package:flutter_fir_e_commerce/src/search/domain/use_cases/search_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this._searchProductsAndCategoriesUseCase,
  ) : super(
          const SearchState.initial(),
        );

  final SearchProductsAndCategoriesUseCase _searchProductsAndCategoriesUseCase;

  Future<void> search({
    required String query,
    int skip = 0,
    int take = 16,
  }) async {
    log('Searching $query');
    if (query.isEmpty) {
      emit(const SearchState.initial());
      return;
    }

    emit(
      SearchState.loading(
        items: state.itemsSafe,
      ),
    );

    final productsAndCategoriesOrFailure =
        await _searchProductsAndCategoriesUseCase(
      PaginationParams(
        skip: skip,
        take: take,
        query: query,
      ),
    );

    emit(
      productsAndCategoriesOrFailure.fold(
        (failure) => SearchState.error(
          failure: failure,
          items: state.itemsSafe,
        ),
        (items) => SearchState.loaded(
          items: [
            if (skip != 0) ...state.itemsSafe,
            ...items,
          ],
        ),
      ),
    );
  }
}
