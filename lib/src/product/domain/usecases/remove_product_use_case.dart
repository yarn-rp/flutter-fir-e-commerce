import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:fpdart/fpdart.dart';

class DeleteProductUseCase extends UseCase<Unit, DeleteProductParams> {
  DeleteProductUseCase(this._repository);

  final RemovableProductRepository _repository;

  @override
  Future<Result<Unit>> call(DeleteProductParams params) =>
      _repository.removeProduct(productId: params.id);
}

class DeleteProductParams {
  DeleteProductParams({
    required this.id,
  });

  final String id;
}
