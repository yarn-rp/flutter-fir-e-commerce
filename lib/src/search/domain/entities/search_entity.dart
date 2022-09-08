abstract class SearchItem implements Comparable<SearchItem> {
  SearchItem(this.name);

  final String name;
  @override
  int compareTo(SearchItem other) => name.compareTo(other.name);
}
