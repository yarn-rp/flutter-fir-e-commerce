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
class EditCategoryUseCase extends UseCase<Unit, EditCategoryParams> {
  EditCategoryUseCase(
    this._categoryRepository,
    this._imageRepository,
  );

  final CategoryRepository _categoryRepository;
  final ImageRepository _imageRepository;

  @override
  Future<Result<Unit>> call(EditCategoryParams params) async {
    String? colorHex;

    try {
      colorHex = params.color?.toHex();
    } catch (_) {
      //TODO(yarn): change this failure for a NotValidColorFailure
      return left(const UnexpectedFailure());
    }

    final nameValidOrFailure = params.name != null
        ? await _categoryRepository.validateCategoryName(
            categoryName: params.name!,
          )
        : right<Failure, Unit?>(null);

    final nameValidAndImageUrlOrFailure = await nameValidOrFailure
        .bindFuture<String?>(
          (_) async => params.imageFile != null
              ? await _imageRepository.uploadImage(params.imageFile!)
              : right<Failure, String?>(null),
        )
        .run();

    return nameValidAndImageUrlOrFailure
        .map(
          (imageUrl) => Tuple2<String, CategoryFieldsToEdit>(
            params.id,
            CategoryFieldsToEdit(
              name: params.name,
              imageUrl: imageUrl,
              colorHex: colorHex,
            ),
          ),
        )
        .fold<FutureOr<Result<Unit>>>(
          left,
          _onValidParams,
        );
  }

  Future<Result<Unit>> _onValidParams(
    Tuple2<String, CategoryFieldsToEdit> editionParams,
  ) =>
      _categoryRepository.editCategory(
        categoryId: editionParams.first,
        fields: editionParams.second,
      );
}

class EditCategoryParams {
  EditCategoryParams({
    required this.id,
    this.name,
    this.imageFile,
    this.color,
  });
  final String id;

  final Color? color;
  final File? imageFile;
  final String? name;
}
