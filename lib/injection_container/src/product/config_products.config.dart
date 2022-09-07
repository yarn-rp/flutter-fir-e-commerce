// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart'
    as _i10;
import 'package:flutter_fir_e_commerce/src/category/data/data_sources/remote_data_source/category_remote_data_source.dart'
    as _i11;
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart'
    as _i14;
import 'package:flutter_fir_e_commerce/src/images/repository/image_repository.dart'
    as _i15;
import 'package:flutter_fir_e_commerce/src/product/data/data_sources/remote_data_source/product_remote_data_source.dart'
    as _i6;
import 'package:flutter_fir_e_commerce/src/product/data/repositories/product_repository.dart'
    as _i9;
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/favorites_repository.dart'
    as _i4;
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart'
    as _i8;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/add_product_to_favorites.dart'
    as _i3;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/create_product_use_case.dart'
    as _i13;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/delete_product_use_case.dart'
    as _i16;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/edit_product_use_case.dart'
    as _i17;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/favorite_product_streamer.dart'
    as _i5;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_product_details_usecase.dart'
    as _i18;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_products_use_case.dart'
    as _i19;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/remove_product_from_favorites.dart'
    as _i12;
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/create_product_cubit/create_product_cubit.dart'
    as _i22;
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/product_details_cubit/product_details_cubit.dart'
    as _i21;
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/products_cubit/product_cubit.dart'
    as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AddProductToFavoritesUseCase>(
      () => _i3.AddProductToFavoritesUseCase(get<_i4.FavoritesRepository>()));
  gh.factory<_i5.FavoriteProductStreamer>(
      () => _i5.FavoriteProductStreamer(get<_i4.FavoritesRepository>()));
  gh.singleton<_i6.ProductRemoteDataSource>(
      _i6.ProductRemoteDataSource(get<_i7.FirebaseFirestore>()));
  gh.singleton<_i8.ProductRepository>(_i9.ProductRepositoryImpl(
      get<_i10.NetworkInfo>(),
      get<_i6.ProductRemoteDataSource>(),
      get<_i11.CategoryRemoteDataSource>()));
  gh.factory<_i12.RemoveProductFromFavoritesUseCase>(() =>
      _i12.RemoveProductFromFavoritesUseCase(get<_i4.FavoritesRepository>()));
  gh.factory<_i13.CreateProductUseCase>(() => _i13.CreateProductUseCase(
      get<_i8.ProductRepository>(),
      get<_i14.CategoryRepository>(),
      get<_i15.ImageRepository>()));
  gh.factory<_i16.DeleteProductUseCase>(
      () => _i16.DeleteProductUseCase(get<_i8.ProductRepository>()));
  gh.factory<_i17.EditProductUseCase>(() => _i17.EditProductUseCase(
      get<_i8.ProductRepository>(),
      get<_i14.CategoryRepository>(),
      get<_i15.ImageRepository>()));
  gh.factory<_i18.GetProductDetailsUseCase>(
      () => _i18.GetProductDetailsUseCase(get<_i8.ProductRepository>()));
  gh.factory<_i19.GetProductsUseCase>(
      () => _i19.GetProductsUseCase(get<_i8.ProductRepository>()));
  gh.factory<_i20.ProductCubit>(() => _i20.ProductCubit(
      get<_i19.GetProductsUseCase>(), get<_i16.DeleteProductUseCase>()));
  gh.factory<_i21.ProductDetailsCubit>(
      () => _i21.ProductDetailsCubit(get<_i18.GetProductDetailsUseCase>()));
  gh.factory<_i22.CreateProductCubit>(
      () => _i22.CreateProductCubit(get<_i13.CreateProductUseCase>()));
  return get;
}
