import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:fpdart/fpdart.dart';

abstract class FavoritesRepository {
  Future<Result<Iterable<Product>>> getFavoritesProduct({
    String query = '',
    int skip = 0,
    int take = 16,
  });

  Future<Result<Unit>> addToFavorites({
    required String productId,
  });

  Future<Result<Unit>> removeFromProduct({
    required String categoryId,
  });
}
