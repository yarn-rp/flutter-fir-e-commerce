part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const ProductState._();

  const factory ProductState.error({
    Iterable<Product>? products,
    required Failure failure,
  }) = ProductsError;

  const factory ProductState.initial() = _Initial;

  const factory ProductState.loaded({
    required Iterable<Product> products,
  }) = ProductsLoaded;

  const factory ProductState.loading({
    Iterable<Product>? products,
  }) = ProductsLoading;

  Iterable<Product> get productsSafe =>
      mapOrNull<Iterable<Product>?>(
        loading: (s) => s.products,
        loaded: (s) => s.products,
        error: (s) => s.products,
      ) ??
      [];
}
