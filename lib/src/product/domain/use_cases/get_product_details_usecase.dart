import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductDetailsUseCase
    extends UseCase<Product, GetProductDetailsParams> {
  GetProductDetailsUseCase(this._repository);

  final ProductRepository _repository;

  @override
  Future<Result<Product>> call(GetProductDetailsParams params) =>
      _repository.getProductDetails(productId: params.id);
}

class GetProductDetailsParams {
  GetProductDetailsParams({
    required this.id,
  });

  final String id;
}
