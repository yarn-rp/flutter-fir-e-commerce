import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/pagination_params.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';

import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsUseCase extends UseCase<Iterable<Product>, PaginationParams> {
  GetProductsUseCase(this._repository);

  final ProductRepository _repository;

  @override
  Future<Result<Iterable<Product>>> call(PaginationParams params) =>
      _repository.getProduct(
        skip: params.skip,
        take: params.take,
        query: params.query,
      );
}
