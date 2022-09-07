import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/category/data/data_sources/remote_data_source/category_remote_data_source.dart';
import 'package:flutter_fir_e_commerce/src/category/data/error/category_exceptions.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/error/category_failures.dart';
import 'package:flutter_fir_e_commerce/src/product/data/data_sources/remote_data_source/product_remote_data_source.dart';
import 'package:flutter_fir_e_commerce/src/product/data/error/product_exceptions.dart';
import 'package:flutter_fir_e_commerce/src/product/data/models/product_model.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/error/product_failures.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/unit.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CreatableProductRepository)
@Singleton(as: EditableProductRepository)
@Singleton(as: DeletableProductRepository)
@Singleton(as: CollectionProductRepository)
class ProductRepositoryImpl
    implements
        CreatableProductRepository,
        EditableProductRepository,
        DeletableProductRepository,
        CollectionProductRepository {
  ProductRepositoryImpl(
    this.networkInfo,
    this.productRemoteDataSource,
    this.categoryRemoteDataSource,
  );

  final CategoryRemoteDataSource categoryRemoteDataSource;
  final NetworkInfo networkInfo;
  final ProductRemoteDataSource productRemoteDataSource;

  @override
  Future<Result<Unit>> createProduct({required ProductToCreate product}) async {
    if (await networkInfo.isConnected) {
      try {
        /// Validates that the category name is actually valid
        final category = await categoryRemoteDataSource
            .getCategoryWithId(product.category.id);

        await productRemoteDataSource.createProduct(
          product: ProductModel(
            isFavorite: false,
            name: product.name,
            imageUrl: product.imageUrl,
            categoryId: category.id,
          ),
        );
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
  Future<Result<Unit>> deleteProduct({required String productId}) async {
    if (await networkInfo.isConnected) {
      try {
        await productRemoteDataSource.deleteProduct(productId: productId);
        return right(unit);
      } on ProductNoExistedException {
        return left(const ProductNoExistFailure());
      } catch (e) {
        return left(const UnexpectedFailure());
      }
    }
    return left(noInternetConnectionFailure);
  }

  @override
  Future<Result<Unit>> editProduct({
    required String productId,
    required ProductFieldsToEdit fields,
  }) {
    // TODO: implement editProduct
    throw UnimplementedError();
  }

  @override
  Future<Result<Iterable<Product>>> getProduct({
    String query = '',
    int skip = 0,
    int take = 16,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final products = await productRemoteDataSource.getProducts(
          skip: skip,
          take: take,
          query: query,
        );
        return right(await Future.wait(products.map(_productModelToEntity)));
      } catch (e) {
        return left(const UnexpectedFailure());
      }
    }
    return left(noInternetConnectionFailure);
  }

  Future<Product> _productModelToEntity(ProductModel product) =>
      (categoryRemoteDataSource.getCategoryWithId(product.categoryId)).then(
        (value) => Product(
          id: product.id!,
          name: product.name,
          imageUrl: product.imageUrl,
          isFavorite: product.isFavorite,
          category: value.toEntity,
        ),
      );
}
