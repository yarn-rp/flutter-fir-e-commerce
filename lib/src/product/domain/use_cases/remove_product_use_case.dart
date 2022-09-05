import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:fpdart/fpdart.dart';

class RemoveProductUseCase extends UseCase<Unit, RemoveProductParams> {
  RemoveProductUseCase(this._repository);

  final RemovableProductRepository _repository;

  @override
  Future<Result<Unit>> call(RemoveProductParams params) =>
      _repository.removeProduct(productId: params.id);
}

class RemoveProductParams {
  RemoveProductParams({
    required this.id,
  });

  final String id;
}
