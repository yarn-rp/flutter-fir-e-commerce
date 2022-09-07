import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/create_category_use_case.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/create_product_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_category_cubit.freezed.dart';
part 'create_category_state.dart';

@injectable
class CreateProductCubit extends Cubit<CreateProductState> {
  CreateProductCubit(this.createProductUseCase)
      : super(const CreateProductState.initial());

  final CreateProductUseCase createProductUseCase;

  Future<void> createProduct({
    required String name,
    required File imageFile,
    required Category category,
  }) async {
    emit(const CreateProductState.processing());

    final categoryOrFailure = await createProductUseCase(
      CreateProductParams(
        name: name,
        imageFile: imageFile,
        categoryId: category.id,
      ),
    );
    emit(
      categoryOrFailure.fold(
        CreateProductState.error,
        (_) => const CreateProductState.success(),
      ),
    );
  }
}
