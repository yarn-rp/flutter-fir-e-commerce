// ignore_for_file: one_member_abstracts

import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:fpdart/fpdart.dart';

class ProductToCreate {
  ProductToCreate({
    required this.name,
    required this.category,
    required this.imageUrl,
  });

  final String name;
  final Category category;
  final String imageUrl;
}

class ProductFieldsToEdit {
  ProductFieldsToEdit({
    this.name,
    this.category,
    this.imageUrl,
  });

  final String? name;
  final Category? category;
  final String? imageUrl;
}

abstract class ProductRepository {
  Future<Result<Unit>> createProduct({
    required ProductToCreate product,
  });
  Future<Result<Unit>> editProduct({
    required String productId,
    required ProductFieldsToEdit fields,
  });
  Future<Result<Unit>> deleteProduct({
    required String productId,
  });
  Future<Result<Iterable<Product>>> getProduct({
    String query = '',
    int skip = 0,
    int take = 16,
  });

  Future<Result<Product>> getProductDetails({
    required String productId,
  });
}
