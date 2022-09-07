part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = ProductDetailsInitial;
  const factory ProductDetailsState.loading({Product? product}) =
      ProductDetailsLoading;
  const factory ProductDetailsState.success({required Product product}) =
      ProductDetailsSuccess;
  const factory ProductDetailsState.error({
    required Failure failure,
    Product? product,
  }) = ProductDetailsError;
}
