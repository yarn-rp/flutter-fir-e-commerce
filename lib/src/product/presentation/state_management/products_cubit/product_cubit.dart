import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/use_case/pagination_params.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';

import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/delete_product_use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_favorite_products_use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_products_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit(
    this._getProductsUseCase,
    this._deleteProductUseCase,
    GetFavoriteProductsUseCase getFavoriteProductsUseCase,
  ) : super(
          const ProductState.initial(),
        ) {
    onFavoritesSubscription =
        getFavoriteProductsUseCase().listen(_onFavoriteProductsChanges);
  }

  late StreamSubscription onFavoritesSubscription;

  final DeleteProductUseCase _deleteProductUseCase;
  final GetProductsUseCase _getProductsUseCase;

  @override
  Future<void> close() {
    onFavoritesSubscription.cancel();
    return super.close();
  }

  Future<void> deleteProduct(Product category) async {
    final currentList = [...state.productsSafe];
    final categoryIndex = currentList.indexOf(category);
    emit(
      ProductState.loaded(
        products: currentList..remove(category),
      ),
    );

    final deletedOrFailure =
        await _deleteProductUseCase(DeleteProductParams(id: category.id));

    emit(
      deletedOrFailure.fold(
        (failure) => ProductState.error(
          failure: failure,
          products: currentList..insert(categoryIndex, category),
        ),
        (r) => ProductState.loaded(
          products: currentList,
        ),
      ),
    );
  }

  Future<void> getProducts({
    int skip = 0,
    int take = 16,
  }) async {
    emit(
      ProductState.loading(
        products: state.productsSafe,
      ),
    );

    final productsOrFailure = await _getProductsUseCase(
      PaginationParams(
        skip: skip,
        take: take,
      ),
    );

    emit(
      productsOrFailure.fold(
        (failure) => ProductState.error(
          failure: failure,
          products: state.productsSafe,
        ),
        (products) => ProductState.loaded(
          products: [
            if (skip != 0) ...state.productsSafe,
            ...products,
          ],
        ),
      ),
    );
  }

  Product _updateProductOnFavoriteProductChanges(
    Iterable<Product> favoritesProducts,
    Product product,
  ) {
    final newValue = favoritesProducts.any((p) => p.id == product.id);
    return product.copyWith(isFavorite: newValue);
  }

  void _onFavoriteProductsChanges(Iterable<Product> favoritesProducts) {
    final productsUpdated = state.productsSafe.map(
        (e) => _updateProductOnFavoriteProductChanges(favoritesProducts, e));

    emit(
      state.map(
        initial: (_) => const ProductState.initial(),
        loading: (s) => ProductState.loading(
          products: productsUpdated,
        ),
        loaded: (s) => ProductState.loaded(
          products: productsUpdated,
        ),
        error: (s) => ProductState.error(
          failure: s.failure,
          products: productsUpdated,
        ),
      ),
    );
  }
}
