class ProductFavoriteDTO {
  ProductFavoriteDTO({
    required this.productId,
    required this.isFavorite,
  });

  final String productId;
  final bool isFavorite;
}
