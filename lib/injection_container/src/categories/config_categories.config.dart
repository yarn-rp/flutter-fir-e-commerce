// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart'
    as _i7;
import 'package:flutter_fir_e_commerce/external/firebase/firebase_module.dart'
    as _i4;
import 'package:flutter_fir_e_commerce/src/category/data/data_sources/remote_data_source/category_remote_data_source.dart'
    as _i3;
import 'package:flutter_fir_e_commerce/src/category/data/repositories/category_repository.dart'
    as _i6;
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart'
    as _i5;
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/create_category_use_case.dart'
    as _i8;
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/delete_category_use_case.dart'
    as _i10;
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/edit_category_use_case.dart'
    as _i11;
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/get_categories_use_case.dart'
    as _i12;
import 'package:flutter_fir_e_commerce/src/images/repository/image_repository.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.CategoryRemoteDataSource>(
      _i3.CategoryRemoteDataSource(get<_i4.FirebaseModule>()));
  gh.singleton<_i5.CategoryRepository>(_i6.CategoryRepositoryImpl(
      get<_i7.NetworkInfo>(), get<_i3.CategoryRemoteDataSource>()));
  gh.factory<_i8.CreateCategoryUseCase>(() => _i8.CreateCategoryUseCase(
      get<_i5.CategoryRepository>(), get<_i9.ImageRepository>()));
  gh.factory<_i10.DeleteCategoryUseCase>(
      () => _i10.DeleteCategoryUseCase(get<_i5.CategoryRepository>()));
  gh.factory<_i11.EditCategoryUseCase>(() => _i11.EditCategoryUseCase(
      get<_i5.CategoryRepository>(), get<_i9.ImageRepository>()));
  gh.factory<_i12.GetCategoriesUseCase>(
      () => _i12.GetCategoriesUseCase(get<_i5.CategoryRepository>()));
  return get;
}
