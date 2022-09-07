import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/create_category_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_category_cubit.freezed.dart';
part 'create_category_state.dart';

@injectable
class CreateCategoryCubit extends Cubit<CreateCategoryState> {
  CreateCategoryCubit(this.createCategoryUseCase)
      : super(const CreateCategoryState.initial());

  final CreateCategoryUseCase createCategoryUseCase;

  Future<void> createCategory({
    required String name,
    required File imageFile,
    required Color color,
  }) async {
    emit(const CreateCategoryState.processing());

    final categoryOrFailure = await createCategoryUseCase(
      CreateCategoryParams(
        name: name,
        imageFile: imageFile,
        color: color,
      ),
    );
    emit(
      categoryOrFailure.fold(
        CreateCategoryState.error,
        (_) => const CreateCategoryState.success(),
      ),
    );
  }
}
