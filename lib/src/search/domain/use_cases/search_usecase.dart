import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/pagination_params.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:flutter_fir_e_commerce/src/search/domain/entities/search_entity.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchProductsAndCategoriesUseCase
    extends UseCase<Iterable<SearchItem>, PaginationParams> {
  SearchProductsAndCategoriesUseCase(
    this._productRepository,
    this._categoryRepository,
  );

  final CategoryRepository _categoryRepository;
  final ProductRepository _productRepository;

  @override
  Future<Result<Iterable<SearchItem>>> call(PaginationParams params) async {
    final categoriesMatches = await _categoryRepository.getCategories(
      skip: params.skip,
      take: params.take,
      query: params.query,
    );

    final productsMatches = await _productRepository.getProduct(
      skip: params.skip,
      take: params.take,
      query: params.query,
    );

    return categoriesMatches.bind<Iterable<SearchItem>>(
      (categories) => productsMatches.map(
        (products) => [
          ...categories,
          ...products,
        ]..sort(),
      ),
    );
  }
}
