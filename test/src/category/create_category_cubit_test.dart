// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_fir_e_commerce/core/error/failures.dart';
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart';
import 'package:flutter_fir_e_commerce/src/category/data/data_sources/remote_data_source/category_remote_data_source.dart';
import 'package:flutter_fir_e_commerce/src/category/data/models/category_model/category_model.dart';
import 'package:flutter_fir_e_commerce/src/category/data/repositories/category_repository.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/create_category_use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/state_manegement/creeate_category_cubit/create_category_cubit.dart';
import 'package:flutter_fir_e_commerce/src/images/repository/image_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

// Dependency setup
class CreateCategoryUseCaseMock extends Mock implements CreateCategoryUseCase {}

class CreateCategoryParamsMock extends Mock implements CreateCategoryParams {}

class FileMock extends Mock implements File {}

class ColorMock extends Mock implements Color {}

class FailureMock extends Mock implements Failure {}

void main() {
  registerFallbackValue(CreateCategoryParamsMock());
  registerFallbackValue(FileMock());
  registerFallbackValue(ColorMock());
  registerFallbackValue(FailureMock());
  group('Create Category Cubit', () {
    final createCategoryUseCase = CreateCategoryUseCaseMock();

    blocTest<CreateCategoryCubit, CreateCategoryState>(
      '''
          Emits [CreateCategoryState.processing,CreateCategoryState.success] 
          if everything went fine.
      ''',
      build: () => CreateCategoryCubit(createCategoryUseCase),
      setUp: () {
        when(
          () => createCategoryUseCase.call(any()),
        ).thenAnswer(
          (Invocation invocation) => Future.value(right(unit)),
        );
      },
      expect: () => [
        const CreateCategoryState.processing(),
        const CreateCategoryState.success(),
      ],
      act: (bloc) => bloc.createCategory(
        name: 'any',
        color: ColorMock(),
        imageFile: FileMock(),
      ),
    );

    blocTest<CreateCategoryCubit, CreateCategoryState>(
      '''
          Emits [CreateCategoryState.processing,CreateCategoryState.failure] 
          if something failed.
      ''',
      build: () => CreateCategoryCubit(createCategoryUseCase),
      setUp: () {
        when(
          () => createCategoryUseCase.call(any()),
        ).thenAnswer(
          (Invocation invocation) => Future.value(left(FailureMock())),
        );
      },
      expect: () => [
        const CreateCategoryState.processing(),
        isA<CreateCategoryError>(),
      ],
      act: (bloc) => bloc.createCategory(
        name: 'any',
        color: ColorMock(),
        imageFile: FileMock(),
      ),
    );
  });
}
