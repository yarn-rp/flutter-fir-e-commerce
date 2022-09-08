part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState.error({
    Iterable<SearchItem>? items,
    required Failure failure,
  }) = SearchsError;

  const factory SearchState.initial() = _Initial;

  const factory SearchState.loaded({
    required Iterable<SearchItem> items,
  }) = SearchsLoaded;

  const factory SearchState.loading({
    Iterable<SearchItem>? items,
  }) = SearchsLoading;

  Iterable<SearchItem> get itemsSafe =>
      mapOrNull<Iterable<SearchItem>?>(
        loading: (s) => s.items,
        loaded: (s) => s.items,
        error: (s) => s.items,
      ) ??
      [];
}
