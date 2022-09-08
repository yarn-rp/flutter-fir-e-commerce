import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetStoreUseCase
    extends UseCase<Map<Category, Iterable<Product>>, NoParams> {
  GetStoreUseCase(
    this._productRepository,
  );

  final ProductRepository _productRepository;

  @override
  Future<Result<Map<Category, Iterable<Product>>>> call(
    NoParams params,
  ) async {
    final productsMatches = await _productRepository.getProduct(
      take: 1000,
    );
    return productsMatches.map((products) {
      final categoriesWithProductsMap = <Category, List<Product>>{};
      for (final product in products) {
        final categoryExistInMap =
            categoriesWithProductsMap.containsKey(product.category);

        if (categoryExistInMap) {
          categoriesWithProductsMap[product.category]!.add(product);
        } else {
          categoriesWithProductsMap[product.category] = [product];
        }
      }

      return categoriesWithProductsMap;
    });
  }
}
