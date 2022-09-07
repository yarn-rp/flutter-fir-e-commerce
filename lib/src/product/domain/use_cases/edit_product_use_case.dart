import 'dart:async';
import 'dart:io';

import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart';
import 'package:flutter_fir_e_commerce/src/images/repository/image_repository.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class EditProductUseCase extends UseCase<Unit, EditProductParams> {
  EditProductUseCase(
    this._repository,
    this._categoryRepository,
    this._imageRepository,
  );

  final CategoryRepository _categoryRepository;
  final ImageRepository _imageRepository;
  final ProductRepository _repository;

  @override
  Future<Result<Unit>> call(EditProductParams params) async {
    final imageUrlOrFailure = params.imageFile != null
        ? await _imageRepository.uploadImage(params.imageFile!)
        : right<Failure, String?>(null);

    final imageUrlAndCategoryOrFailure = await imageUrlOrFailure
        .bindFuture<Tuple2<String?, Category?>>(
          (imageUrl) async => (params.categoryId != null
                  ? (await _categoryRepository.getCategoryDetails(
                      categorySlug: params.categoryId!,
                    ))
                  : right<Failure, Category?>(null))
              .map(
            (category) => Tuple2(imageUrl, category),
          ),
        )
        .run();

    return imageUrlAndCategoryOrFailure
        .map(
          (imageUrlAndCategory) => Tuple2(
            params.id,
            ProductFieldsToEdit(
              name: params.name,
              imageUrl: imageUrlAndCategory.first,
              category: imageUrlAndCategory.second,
            ),
          ),
        )
        .fold<FutureOr<Result<Unit>>>(
          left,
          _onValidParams,
        );
  }

  Future<Result<Unit>> _onValidParams(
    Tuple2<String, ProductFieldsToEdit> editionParams,
  ) =>
      _repository.editProduct(
        productId: editionParams.first,
        fields: editionParams.second,
      );
}

class EditProductParams {
  EditProductParams({
    required this.id,
    this.name,
    this.categoryId,
    this.imageFile,
  });

  final String? categoryId;
  final String id;
  final File? imageFile;
  final String? name;

  EditProductParams withValues({
    String? categoryId,
    File? imageFile,
    String? name,
  }) {
    return EditProductParams(
      id: id,
      categoryId: categoryId ?? this.categoryId,
      imageFile: imageFile ?? this.imageFile,
      name: name ?? this.name,
    );
  }
}
