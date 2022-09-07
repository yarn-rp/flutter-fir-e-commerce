import 'package:flutter_fir_e_commerce/core/error/failures.dart';

class ProductFailure extends Failure {
  const ProductFailure({this.message = 'Product Failure'});
  final String? message;

  @override
  String toString() => message ?? super.toString();
}

class ProductAlreadyExistsFailure extends Failure {
  const ProductAlreadyExistsFailure({
    this.message = 'A category already exists with that name',
  });
  final String? message;

  @override
  String toString() => message ?? super.toString();
}

class ProductNoExistFailure extends Failure {
  const ProductNoExistFailure({
    this.message = 'Product is not registered in DB',
  });
  final String? message;

  @override
  String toString() => message ?? super.toString();
}
