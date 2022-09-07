part of 'create_category_cubit.dart';

@freezed
class CreateCategoryState with _$CreateCategoryState {
  const factory CreateCategoryState.initial() = CreateCategoryInitial;
  const factory CreateCategoryState.processing() = CreateCategoryProcessing;
  const factory CreateCategoryState.success() = CreateCategorySuccess;
  const factory CreateCategoryState.error(
    Failure failure,
  ) = CreateCategoryError;
}
