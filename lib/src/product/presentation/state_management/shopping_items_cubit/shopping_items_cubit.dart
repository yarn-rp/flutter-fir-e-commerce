import 'dart:async';
import 'dart:core';

import 'package:bloc/bloc.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_favorite_products_use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_store_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'shopping_items_cubit.freezed.dart';
part 'shopping_items_state.dart';

@injectable
class ShoppingItemsCubit extends Cubit<ShoppingItemsState> {
  ShoppingItemsCubit(
    this._getStoreUseCase,
    GetFavoriteProductsUseCase getFavoriteProductsUseCase,
  ) : super(
          const ShoppingItemsState.initial(),
        ) {
    // onFavoritesSubscription =
    //     getFavoriteProductsUseCase().listen(_onFavoriteProductsChanges);
  }

  // late StreamSubscription onFavoritesSubscription;

  final GetStoreUseCase _getStoreUseCase;

  @override
  Future<void> close() {
    // onFavoritesSubscription.cancel();
    return super.close();
  }

  Future<void> getStore() async {
    emit(
      ShoppingItemsState.loading(
        items: state.itemsSafe,
      ),
    );

    final productsOrFailure = await _getStoreUseCase(NoParams());

    emit(
      productsOrFailure.fold(
        (failure) => ShoppingItemsState.error(
          failure: failure,
          items: state.itemsSafe,
        ),
        (items) => ShoppingItemsState.loaded(items: items),
      ),
    );
  }

  // Product _updateProductOnFavoriteProductChanges(
  //   Iterable<Product> favoritesProducts,
  //   Product product,
  // ) {
  //   final newValue = favoritesProducts.any((p) => p.id == product.id);
  //   return product.copyWith(isFavorite: newValue);
  // }

  // void _onFavoriteProductsChanges(Iterable<Product> favoritesProducts) {
  //   final productsUpdated = state.productsSafe.map(
  //       (e) => _updateProductOnFavoriteProductChanges(favoritesProducts, e));

  //   emit(
  //     state.map(
  //       initial: (_) => const ProductState.initial(),
  //       loading: (s) => ProductState.loading(
  //         products: productsUpdated,
  //       ),
  //       loaded: (s) => ProductState.loaded(
  //         products: productsUpdated,
  //       ),
  //       error: (s) => ProductState.error(
  //         failure: s.failure,
  //         products: productsUpdated,
  //       ),
  //     ),
  //   );
  // }
}
