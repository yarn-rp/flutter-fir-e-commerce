class PaginationParams {
  PaginationParams({
    this.skip = 0,
    this.take = 16,
    this.query = '',
  });

  final int skip;
  final int take;
  final String query;
}
