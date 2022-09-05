import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/pagination_params.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';

import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';

class GetProductUseCase extends UseCase<Iterable<Product>, PaginationParams> {
  GetProductUseCase(this._repository);

  final CollectionProductRepository _repository;

  @override
  Future<Result<Iterable<Product>>> call(PaginationParams params) =>
      _repository.getProduct(
        skip: params.skip,
        take: params.take,
        query: params.query,
      );
}
