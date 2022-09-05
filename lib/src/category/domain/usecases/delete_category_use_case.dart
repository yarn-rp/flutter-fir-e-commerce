import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart';
import 'package:fpdart/fpdart.dart';

class DeleteCategoryUseCase extends UseCase<Unit, DeleteCategoryParams> {
  DeleteCategoryUseCase(this._repository);

  final CategoryRepository _repository;

  @override
  Future<Result<Unit>> call(DeleteCategoryParams params) =>
      _repository.removeCategory(categoryId: params.id);
}

class DeleteCategoryParams {
  DeleteCategoryParams({
    required this.id,
  });

  final String id;
}
