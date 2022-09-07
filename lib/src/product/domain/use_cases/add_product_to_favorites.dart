import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/favorites_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddProductToFavoritesUseCase
    extends UseCase<Unit, AddProductToFavoritesParams> {
  AddProductToFavoritesUseCase(this._repository);

  final FavoritesRepository _repository;

  @override
  Future<Result<Unit>> call(AddProductToFavoritesParams params) =>
      _repository.addToFavorites(productId: params.id);
}

class AddProductToFavoritesParams {
  AddProductToFavoritesParams({
    required this.id,
  });

  final String id;
}
