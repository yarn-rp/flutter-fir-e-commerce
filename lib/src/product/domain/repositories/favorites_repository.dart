import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product_favorite_dto.dart';
import 'package:fpdart/fpdart.dart';

abstract class FavoritesRepository {
  Stream<ProductFavoriteDTO> get productFavoritesChangesStream;

  Future<Result<Iterable<Product>>> getFavoritesProduct({
    String query = '',
    int skip = 0,
    int take = 16,
  });

  Future<Result<Unit>> addToFavorites({
    required String productId,
  });

  Future<Result<Unit>> removeFromFavorites({
    required String productId,
  });
}
