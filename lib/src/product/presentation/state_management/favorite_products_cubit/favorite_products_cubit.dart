import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/add_product_to_favorites_use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_favorite_products_use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/remove_product_from_favorites_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorite_products_cubit.freezed.dart';
part 'favorite_products_state.dart';

@singleton
class FavoriteProductsCubit extends Cubit<FavoriteProductsState> {
  FavoriteProductsCubit(
    this._getFavoriteProductsUseCase,
    this._addProductToFavoritesUseCase,
    this._removeProductFromFavoritesUseCase,
  ) : super(const FavoriteProductsState.initial()) {
    onFavoritesSubscription =
        _getFavoriteProductsUseCase().listen(_emitSuccess);
  }
  void _emitSuccess(Iterable<Product> products) =>
      emit(FavoriteProductsState.success(products: products));
  late StreamSubscription onFavoritesSubscription;

  @override

  ///Do not close this because this is a singleton
  Future<void> close() async {}

  final AddProductToFavoritesUseCase _addProductToFavoritesUseCase;
  final GetFavoriteProductsUseCase _getFavoriteProductsUseCase;
  final RemoveProductFromFavoritesUseCase _removeProductFromFavoritesUseCase;

  Future<void> addProductToFavorites(Product product) async {
    emit(const FavoriteProductsState.processing());

    final addedOrFailure = await _addProductToFavoritesUseCase(
      AddProductToFavoritesParams(id: product.id),
    );

    emit(
      addedOrFailure.fold(
        (failure) => FavoriteProductsState.error(
          failure: failure,
          products: state.productsSafe,
        ),
        (_) => state,
      ),
    );
  }

  Future<void> removeProductFromFavorites(Product product) async {
    emit(const FavoriteProductsState.processing());

    final addedOrFailure = await _removeProductFromFavoritesUseCase(
      RemoveProductFromFavoritesParams(id: product.id),
    );

    emit(
      addedOrFailure.fold(
        (failure) => FavoriteProductsState.error(
          failure: failure,
          products: state.productsSafe,
        ),
        (_) => state,
      ),
    );
  }
}
