part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const CategoryState._();

  const factory CategoryState.error({
    Iterable<Category>? categories,
    required Failure failure,
  }) = CategoriesError;

  const factory CategoryState.initial() = _Initial;

  const factory CategoryState.loaded({
    required Iterable<Category> categories,
  }) = CategoriesLoaded;

  const factory CategoryState.loading({
    Iterable<Category>? categories,
  }) = CategoriesLoading;

  Iterable<Category> get categoriesSafe =>
      mapOrNull<Iterable<Category>?>(
        loading: (s) => s.categories,
        loaded: (s) => s.categories,
        error: (s) => s.categories,
      ) ??
      [];
}
