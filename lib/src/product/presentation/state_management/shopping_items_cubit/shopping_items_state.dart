part of 'shopping_items_cubit.dart';

@freezed
class ShoppingItemsState with _$ShoppingItemsState {
  const ShoppingItemsState._();

  const factory ShoppingItemsState.error({
    Map<Category, Iterable<Product>>? items,
    required Failure failure,
  }) = ShoppingItemsError;

  const factory ShoppingItemsState.initial() = _Initial;

  const factory ShoppingItemsState.loaded({
    required Map<Category, Iterable<Product>> items,
  }) = ShoppingItemsLoaded;

  const factory ShoppingItemsState.loading({
    Map<Category, Iterable<Product>>? items,
  }) = ShoppingItemsLoading;

  Map<Category, Iterable<Product>>? get itemsSafe =>
      mapOrNull<Map<Category, Iterable<Product>>?>(
        loading: (s) => s.items,
        loaded: (s) => s.items,
        error: (s) => s.items,
      ) ??
      {};
}
