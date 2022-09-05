import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/pagination_params.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart';

class GetCategoriesUseCase
    extends UseCase<Iterable<Category>, PaginationParams> {
  GetCategoriesUseCase(this._repository);

  final CategoryRepository _repository;

  @override
  Future<Result<Iterable<Category>>> call(PaginationParams params) =>
      _repository.getCategories(
        skip: params.skip,
        take: params.take,
        query: params.query,
      );
}
