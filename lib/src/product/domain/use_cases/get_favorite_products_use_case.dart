import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetFavoriteProductsUseCase {
  GetFavoriteProductsUseCase(this._repository);

  final ProductRepository _repository;

  Stream<Iterable<Product>> call() => _repository.favoriteProducts;
}
