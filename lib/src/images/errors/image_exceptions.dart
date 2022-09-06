import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';

abstract class ImageFailure extends Failure {
  const ImageFailure({
    this.message = 'Image Failure',
  });
  final String? message;

  @override
  String toString() => message ?? super.toString();
}

class ImageUploadFailure extends Failure {
  const ImageUploadFailure({
    this.message = 'ImageUploadFailure',
  });
  final String? message;

  @override
  String toString() => message ?? super.toString();
}

class CouldNotTakeValidUrlFailure extends Failure {
  const CouldNotTakeValidUrlFailure({
    this.message = 'CouldNotTakeValidUrlException',
  });
  final String? message;

  @override
  String toString() => message ?? super.toString();
}
