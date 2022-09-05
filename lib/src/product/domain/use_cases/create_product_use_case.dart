import 'dart:async';
import 'dart:io';

import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart';
import 'package:flutter_fir_e_commerce/src/images/repository/image_repository.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:fpdart/fpdart.dart';

class CreateProductUseCase extends UseCase<Unit, CreateProductParams> {
  CreateProductUseCase(
    this._repository,
    this._categoryRepository,
    this._imageRepository,
  );

  final CategoryRepository _categoryRepository;
  final ImageRepository _imageRepository;
  final CreatableProductRepository _repository;

  @override
  Future<Result<Unit>> call(CreateProductParams params) async {
    final imageUrlOrFailure =
        await _imageRepository.uploadImage(params.imageFile);

    final imageUrlAndCategoryOrFailure = await imageUrlOrFailure
        .bindFuture<Tuple2<String, Category>>(
          (imageUrl) async => (await _categoryRepository.getCategoryDetails(
            categorySlug: params.categoryId,
          ))
              .map(
            (category) => Tuple2(imageUrl, category),
          ),
        )
        .run();

    return imageUrlAndCategoryOrFailure
        .map(
          (imageUrlAndCategory) => ProductToCreate(
            name: params.name,
            imageUrl: imageUrlAndCategory.first,
            category: imageUrlAndCategory.second,
          ),
        )
        .fold<FutureOr<Result<Unit>>>(
          left,
          _onValidParams,
        );
  }

  Future<Result<Unit>> _onValidParams(ProductToCreate product) =>
      _repository.createProduct(product: product);
}

class CreateProductParams {
  CreateProductParams({
    required this.name,
    required this.categoryId,
    required this.imageFile,
  });

  final String categoryId;
  final File imageFile;
  final String name;
}
