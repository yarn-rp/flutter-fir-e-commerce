import 'package:flutter_fir_e_commerce/core/error/exceptions.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/category/data/data_sources/remote_data_source/category_remote_data_source.dart';
import 'package:flutter_fir_e_commerce/src/category/data/error/category_exceptions.dart';
import 'package:flutter_fir_e_commerce/src/category/data/models/category_model/category_model.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/error/category_failures.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:fpdart/fpdart.dart';

import 'package:injectable/injectable.dart';

@Singleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl(
    this.networkInfo,
    this.categoryRemoteDataSource,
  );

  final CategoryRemoteDataSource categoryRemoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Result<Unit>> createCategory({
    required CategoryToCreate category,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await categoryRemoteDataSource.createCategory(
          category: CategoryModel(
            colorHex: category.colorHex,
            name: category.name,
            imageUrl: category.imageUrl,
          ),
        );
        return right(unit);
      } catch (e) {
        return left(const UnexpectedFailure());
      }
    }
    return left(noInternetConnectionFailure);
  }

  @override
  Future<Result<Unit>> deleteCategory({required String categoryId}) async {
    if (await networkInfo.isConnected) {
      try {
        await categoryRemoteDataSource.deleteCategory(categoryId: categoryId);
        return right(unit);
      } on CategoryNoExistedException {
        return left(const CategoryNoExistFailure());
      } catch (e) {
        return left(const UnexpectedFailure());
      }
    }
    return left(noInternetConnectionFailure);
  }

  @override
  Future<Result<Unit>> editCategory(
      {required String categoryId, required CategoryFieldsToEdit fields}) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }

  @override
  Future<Result<Iterable<Category>>> getCategories({
    String query = '',
    int skip = 0,
    int take = 16,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final categories = await categoryRemoteDataSource.getCategories(
          skip: skip,
          take: take,
          query: query,
        );
        return right(categories.map((e) => e.toEntity));
      } catch (e) {
        return left(const UnexpectedFailure());
      }
    }
    return left(noInternetConnectionFailure);
  }

  @override
  Future<Result<Category>> getCategoryDetails({
    required String categorySlug,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        return right(
          await categoryRemoteDataSource.getCategoryWithId(categorySlug).then(
                (value) => value.toEntity,
              ),
        );
      } catch (e) {
        return left(const UnexpectedFailure());
      }
    }
    return left(noInternetConnectionFailure);
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
  Future<Result<Unit>> validateCategoryName({
    required String categoryName,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final isBeingUsed =
            await categoryRemoteDataSource.anyCategoryWithName(categoryName);
        if (!isBeingUsed) {
          return right(unit);
        } else {
          return left(const CategoryAlreadyExistsFailure());
        }
      } catch (e) {
        return left(const UnexpectedFailure());
      }
    }
    return left(noInternetConnectionFailure);
  }
}
