import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/extensions/color.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';
import 'package:flutter_fir_e_commerce/core/use_case/use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart';
import 'package:flutter_fir_e_commerce/src/images/repository/image_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateCategoryUseCase extends UseCase<Unit, CreateCategoryParams> {
  CreateCategoryUseCase(
    this._categoryRepository,
    this._imageRepository,
  );

  final CategoryRepository _categoryRepository;
  final ImageRepository _imageRepository;

  @override
  Future<Result<Unit>> call(CreateCategoryParams params) async {
    late String colorHex;

    try {
      colorHex = params.color.toHex();
    } catch (_) {
      return left(const UnexpectedFailure());
    }

    final nameValidOrFailure = await _categoryRepository.validateCategoryName(
      categoryName: params.name,
    );

    final nameValidAndImageUrlOrFailure = await nameValidOrFailure
        .bindFuture<String>(
          (_) => _imageRepository.uploadImage(params.imageFile),
        )
        .run();

    return nameValidAndImageUrlOrFailure
        .map(
          (imageUrl) => CategoryToCreate(
            name: params.name,
            imageUrl: imageUrl,
            colorHex: colorHex,
          ),
        )
        .fold<FutureOr<Result<Unit>>>(
          left,
          _onValidParams,
        );
  }

  Future<Result<Unit>> _onValidParams(CategoryToCreate category) =>
      _categoryRepository.createCategory(category: category);
}

class CreateCategoryParams {
  CreateCategoryParams({
    required this.name,
    required this.imageFile,
    required this.color,
  });

  final Color color;
  final File imageFile;
  final String name;
}
