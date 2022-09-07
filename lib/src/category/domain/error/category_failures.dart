import 'package:flutter_fir_e_commerce/core/error/failures.dart';

class CategoryFailure extends Failure {
  const CategoryFailure({this.message = 'Category Failure'});
  final String? message;

  @override
  String toString() => message ?? super.toString();
}

class CategoryAlreadyExistsFailure extends Failure {
  const CategoryAlreadyExistsFailure({
    this.message = 'A category already exists with that name',
  });
  final String? message;

  @override
  String toString() => message ?? super.toString();
}

class CategoryNoExistFailure extends Failure {
  const CategoryNoExistFailure({
    this.message = 'Category is not registered in DB',
  });
  final String? message;

  @override
  String toString() => message ?? super.toString();
}
