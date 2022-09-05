import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/category/data/datasources/remote_data_source/category_remote_data_source.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:fpdart/src/unit.dart';

class RealCategoryRepository implements CategoryRepository {
  RealCategoryRepository(this.networkInfo, this.categoryRemoteDataSource);

  final NetworkInfo networkInfo;
  final CategoryRemoteDataSource categoryRemoteDataSource;
  @override
  Future<Result<Unit>> createCategory({required CategoryToCreate category}) {
    // TODO: implement createCategory
    throw UnimplementedError();
  }

  @override
  Future<Result<Unit>> editCategory(
      {required String categoryId, required CategoryFieldsToEdit fields}) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }

  @override
  Future<Result<Iterable<Category>>> getCategories(
      {String query = '', int skip = 0, int take = 16}) {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<Result<Category>> getCategoryDetails({required String categorySlug}) {
    // TODO: implement getCategoryDetails
    throw UnimplementedError();
  }

  @override
  Future<Result<Iterable<Product>>> getProductsFromCategory({
    required String categorySlug,
    String query = '',
    int skip = 0,
    int take = 16,
  }) {
    // TODO: implement getProductsFromCategory
    throw UnimplementedError();
  }

  @override
  Future<Result<Unit>> removeCategory({required String categoryId}) {
    // TODO: implement removeCategory
    throw UnimplementedError();
  }

  @override
  Future<Result<Unit>> validateCategoryName({required String categoryName}) {
    // TODO: implement validateCategoryName
    throw UnimplementedError();
  }
}
