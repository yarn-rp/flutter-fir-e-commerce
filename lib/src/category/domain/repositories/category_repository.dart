import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:fpdart/fpdart.dart';

class CategoryToCreate {}

class CategoryFieldsToEdit {}

abstract class CategoryRepository {
  CategoryRepository(this.networkInfo);

  final NetworkInfo networkInfo;

  Future<Result<Iterable<Category>>> getCategories({
    String query = '',
    int skip = 0,
    int take = 16,
  });

  Future<Result<Iterable<Category>>> getProductsFromCategory({
    String categorySlug,
    String query = '',
    int skip = 0,
    int take = 16,
  });

  Future<Result<Unit>> createCategory({
    required CategoryToCreate category,
  });

  Future<Result<Unit>> editCategory({
    required String categoryId,
    required CategoryFieldsToEdit fields,
  });

  Future<Result<Unit>> removeCategory({String categoryId});
}
