// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
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
class ImageRepositoryFake extends Mock implements ImageRepository {}

class CategoryRemoteDataSourceFake extends Mock
    implements CategoryRemoteDataSource {}

class NetworkInfoFake extends Mock implements NetworkInfo {}

class CategoryModelFake extends Mock implements CategoryModel {}

void main() {
  group('Create Category Integration', () {
    registerFallbackValue(CategoryModelFake());
    late ImageRepositoryFake imageRepository;
    late NetworkInfoFake networkInfo;
    late CreateCategoryUseCase createCategoriesUseCase;
    late CategoryRemoteDataSourceFake categoryRemoteDataSource;
    const testName = 'some-random-name';
    // Test color to work with. We don't want to test colorHex
    // functionality in these groups tests
    const testColor = Colors.red;
    final testFile = File.fromUri(Uri.parse('Test'));
    const testUrl = 'https://someUrl.com';

    void setupDependencies() {
      imageRepository = ImageRepositoryFake();
      networkInfo = NetworkInfoFake();
      when(() => networkInfo.isConnected)
          .thenAnswer((invocation) => Future.value(true));
      categoryRemoteDataSource = CategoryRemoteDataSourceFake();

      final _categoryRepository = CategoryRepositoryImpl(
        networkInfo,
        categoryRemoteDataSource,
      );
      createCategoriesUseCase = CreateCategoryUseCase(
        _categoryRepository,
        imageRepository,
      );
      // Test file to work with. We don't want to test imageUpload functionality
      // in these groups tests
    }

    group('Image upload is working properly', () {
      void setupImageRepositorySuccess() {
        when(
          () => imageRepository.uploadImage(testFile),
        ).thenAnswer(
          (_) => Future.value(
            right<Failure, String>(testUrl),
          ),
        );
      }

      blocTest<CreateCategoryCubit, CreateCategoryState>(
        '''
          emits [
          const CreateCategoryState.processing(),
          const CreateCategoryState.success(),
          ] if there is no category with the same name
        ''',
        build: () => CreateCategoryCubit(createCategoriesUseCase),
        setUp: () {
          setupDependencies();
          setupImageRepositorySuccess();
          when(
            () => categoryRemoteDataSource.createCategory(
              category: any(named: 'category'),
            ),
          ).thenAnswer(
            (Invocation invocation) => Future.value(CategoryModelFake()),
          );

          when(
            () => categoryRemoteDataSource.anyCategoryWithName(testName),
          ).thenAnswer(
            (Invocation invocation) => Future.value(false),
          );
        },
        expect: () {
          verify(() => categoryRemoteDataSource.anyCategoryWithName(testName))
              .called(1);
          verify(
            () => categoryRemoteDataSource.createCategory(
              category: any(named: 'category'),
            ),
          ).called(1);
          return <CreateCategoryState>[
            const CreateCategoryState.processing(),
            const CreateCategoryState.success(),
          ];
        },
        act: (bloc) => bloc.createCategory(
          name: testName,
          color: testColor,
          imageFile: testFile,
        ),
      );
      blocTest<CreateCategoryCubit, CreateCategoryState>(
        '''
          emits [
          const CreateCategoryState.processing(),
          const CreateCategoryState.CreateCategoryError(),
          ] if there is a category with the same name
        ''',
        build: () => CreateCategoryCubit(createCategoriesUseCase),
        setUp: () {
          setupDependencies();
          setupImageRepositorySuccess();
          when(
            () => categoryRemoteDataSource.createCategory(
              category: any(named: 'category'),
            ),
          ).thenAnswer(
            (Invocation invocation) => Future.value(
              invocation.namedArguments['category'] as CategoryModelFake,
            ),
          );

          when(
            () => categoryRemoteDataSource.anyCategoryWithName(testName),
          ).thenAnswer(
            (Invocation invocation) => Future.value(true),
          );
        },
        expect: () {
          verify(() => categoryRemoteDataSource.anyCategoryWithName(testName))
              .called(1);
          verifyNever(
            () => categoryRemoteDataSource.createCategory(
              category: any(named: 'category'),
            ),
          );
          return [
            const CreateCategoryState.processing(),
            isA<CreateCategoryError>()
          ];
        },
        act: (bloc) => bloc.createCategory(
          name: testName,
          color: testColor,
          imageFile: testFile,
        ),
      );
    });
    group('Image upload is failing', () {});
  });
}
