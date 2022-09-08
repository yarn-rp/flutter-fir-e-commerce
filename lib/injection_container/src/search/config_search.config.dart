// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart'
    as _i5;
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart'
    as _i4;
import 'package:flutter_fir_e_commerce/src/search/domain/use_cases/search_usecase.dart'
    as _i3;
import 'package:flutter_fir_e_commerce/src/search/presentation/state_management/search_cubit/search_cubit.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.SearchProductsAndCategoriesUseCase>(() =>
      _i3.SearchProductsAndCategoriesUseCase(
          get<_i4.ProductRepository>(), get<_i5.CategoryRepository>()));
  gh.factory<_i6.SearchCubit>(
      () => _i6.SearchCubit(get<_i3.SearchProductsAndCategoriesUseCase>()));
  return get;
}
