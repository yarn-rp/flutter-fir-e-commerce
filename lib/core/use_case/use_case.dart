import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_fir_e_commerce/core/result_type/result_type.dart';

/// Base class for declaring UseCases.
// ignore: one_member_abstracts
abstract class UseCase<Type, Params> {
  FutureOr<Result<Type>> call(Params params);
}

/// Class for passing NoParams to UseCases
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
