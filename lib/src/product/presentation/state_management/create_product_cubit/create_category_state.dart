part of 'create_product_cubit.dart';

@freezed
class CreateProductState with _$CreateProductState {
  const factory CreateProductState.initial() = CreateProductInitial;
  const factory CreateProductState.processing() = CreateProductProcessing;
  const factory CreateProductState.success() = CreateProductSuccess;
  const factory CreateProductState.error(
    Failure failure,
  ) = CreateProductError;
}
