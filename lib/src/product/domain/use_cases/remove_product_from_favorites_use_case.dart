import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveProductFromFavoritesUseCase
    extends UseCase<Unit, RemoveProductFromFavoritesParams> {
  RemoveProductFromFavoritesUseCase(this._repository);

  final ProductRepository _repository;

  @override
  Future<Result<Unit>> call(RemoveProductFromFavoritesParams params) =>
      _repository.removeFromFavorites(productId: params.id);
}

class RemoveProductFromFavoritesParams {
  RemoveProductFromFavoritesParams({
    required this.id,
  });

  final String id;
}
