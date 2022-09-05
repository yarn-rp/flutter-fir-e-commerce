import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:fpdart/fpdart.dart';

abstract class CategoryRepository {
  Future<Result<Iterable<Category>>> getCategories({
    String query = '',
    int skip = 0,
    int take = 16,
  });

  Future<Result<Category>> getCategoryDetails({
    required String categorySlug,
  });
  Future<Result<Unit>> validateCategoryName({
    required String categoryName,
  });

  Future<Result<Iterable<Product>>> getProductsFromCategory({
    required String categorySlug,
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

  Future<Result<Unit>> removeCategory({
    required String categoryId,
  });
}

class CategoryToCreate {
  CategoryToCreate({
    required this.colorHex,
    required this.name,
    required this.imageUrl,
  });

  final String colorHex;
  final String name;
  final String imageUrl;
}

class CategoryFieldsToEdit {
  CategoryFieldsToEdit({
    this.colorHex,
    this.name,
    this.imageUrl,
  });

  final String? colorHex;
  final String? name;
  final String? imageUrl;
}
