import 'dart:async';

import 'package:flutter_fir_e_commerce/src/product/domain/entities/product_favorite_dto.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/favorites_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavoriteProductStreamer {
  FavoriteProductStreamer(this._favoritesRepository);

  final FavoritesRepository _favoritesRepository;
  late Stream<ProductFavoriteDTO> _productFavoriteStreamer;

  Stream<ProductFavoriteDTO> listenIf(
    bool Function(
      ProductFavoriteDTO productData,
    )
        condition,
  ) =>
      _productFavoriteStreamer.where(condition);
}
