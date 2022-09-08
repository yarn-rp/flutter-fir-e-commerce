part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState.error({
    Iterable<SearchItem>? items,
    required Failure failure,
  }) = SearchError;

  const factory SearchState.initial() = SearchInitial;

  const factory SearchState.loaded({
    required Iterable<SearchItem> items,
  }) = SearchLoaded;

  const factory SearchState.loading({
    Iterable<SearchItem>? items,
  }) = SearchLoading;

  Iterable<SearchItem> get itemsSafe =>
      mapOrNull<Iterable<SearchItem>?>(
        loading: (s) => s.items,
        loaded: (s) => s.items,
        error: (s) => s.items,
      ) ??
      [];
}
