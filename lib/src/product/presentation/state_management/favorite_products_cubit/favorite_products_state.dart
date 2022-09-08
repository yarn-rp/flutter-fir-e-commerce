part of 'favorite_products_cubit.dart';

@freezed
class FavoriteProductsState with _$FavoriteProductsState {
  const FavoriteProductsState._();

  const factory FavoriteProductsState.error({
    Iterable<Product>? products,
    required Failure failure,
  }) = FavoriteProductsError;

  const factory FavoriteProductsState.initial() = _Initial;

  const factory FavoriteProductsState.success({
    required Iterable<Product> products,
  }) = FavoriteProductsSuccess;

  const factory FavoriteProductsState.processing({
    Iterable<Product>? products,
  }) = FavoriteProductsProcessing;

  Iterable<Product> get productsSafe =>
      mapOrNull<Iterable<Product>?>(
        processing: (s) => s.products,
        success: (s) => s.products,
        error: (s) => s.products,
      ) ??
      [];
}
