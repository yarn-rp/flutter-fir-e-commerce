import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_favorite_products_use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_product_details_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_details_cubit.freezed.dart';
part 'product_details_state.dart';

@injectable
class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(
    this.getProductsUseCase,
    GetFavoriteProductsUseCase getFavoriteProductsUseCase,
  ) : super(const ProductDetailsState.initial()) {
    onFavoritesSubscription =
        getFavoriteProductsUseCase().listen(_onFavoriteProductsChanges);
  }

  final GetProductDetailsUseCase getProductsUseCase;
  late StreamSubscription onFavoritesSubscription;

  @override
  Future<void> close() {
    onFavoritesSubscription.cancel();
    return super.close();
  }

  Future<void> getProductDetails(String productId) async {
    emit(const ProductDetailsState.loading());

    final productOrFailure =
        await getProductsUseCase(GetProductDetailsParams(id: productId));

    emit(
      productOrFailure.fold(
        (failure) => ProductDetailsState.error(failure: failure),
        (r) => ProductDetailsState.success(product: r),
      ),
    );
  }

  Product _updateProductOnFavoriteProductChanges(
      Iterable<Product> favoritesProducts, Product product) {
    final newValue = favoritesProducts.any((p) => p.id == product.id);
    return product.copyWith(isFavorite: newValue);
  }

  void _onFavoriteProductsChanges(Iterable<Product> favoritesProducts) {
    final product = state.mapOrNull<Product?>(
      loading: (s) => s.product,
      success: (s) => s.product,
      error: (s) => s.product,
    );

    if (product != null) {
      final productUpdated =
          _updateProductOnFavoriteProductChanges(favoritesProducts, product);
      emit(
        state.map(
          initial: (_) => const ProductDetailsState.initial(),
          loading: (s) => ProductDetailsState.loading(
            product: productUpdated,
          ),
          success: (s) => ProductDetailsState.success(
            product: productUpdated,
          ),
          error: (s) => ProductDetailsState.error(
            failure: s.failure,
            product: productUpdated,
          ),
        ),
      );
    }
  }
}
