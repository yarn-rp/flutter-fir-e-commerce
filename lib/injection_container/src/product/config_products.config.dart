// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:flutter_fir_e_commerce/core/network/network_info/network_info.dart'
    as _i7;
import 'package:flutter_fir_e_commerce/src/category/data/data_sources/remote_data_source/category_remote_data_source.dart'
    as _i8;
import 'package:flutter_fir_e_commerce/src/category/domain/repositories/category_repository.dart'
    as _i12;
import 'package:flutter_fir_e_commerce/src/images/repository/image_repository.dart'
    as _i13;
import 'package:flutter_fir_e_commerce/src/product/data/data_sources/remote_data_source/product_remote_data_source.dart'
    as _i3;
import 'package:flutter_fir_e_commerce/src/product/data/repositories/product_repository.dart'
    as _i6;
import 'package:flutter_fir_e_commerce/src/product/domain/repositories/product_repository.dart'
    as _i5;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/add_product_to_favorites_use_case.dart'
    as _i10;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/create_product_use_case.dart'
    as _i11;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/delete_product_use_case.dart'
    as _i14;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/edit_product_use_case.dart'
    as _i15;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_favorite_products_use_case.dart'
    as _i16;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_product_details_usecase.dart'
    as _i17;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_products_use_case.dart'
    as _i18;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/get_store_use_case.dart'
    as _i19;
import 'package:flutter_fir_e_commerce/src/product/domain/use_cases/remove_product_from_favorites_use_case.dart'
    as _i9;
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/create_product_cubit/create_product_cubit.dart'
    as _i23;
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/favorite_products_cubit/favorite_products_cubit.dart'
    as _i24;
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/product_details_cubit/product_details_cubit.dart'
    as _i21;
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/products_cubit/product_cubit.dart'
    as _i20;
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/shopping_items_cubit/shopping_items_cubit.dart'
    as _i22;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.ProductRemoteDataSource>(
      _i3.ProductRemoteDataSource(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i5.ProductRepository>(_i6.ProductRepositoryImpl(
      get<_i7.NetworkInfo>(),
      get<_i3.ProductRemoteDataSource>(),
      get<_i8.CategoryRemoteDataSource>()));
  gh.factory<_i9.RemoveProductFromFavoritesUseCase>(() =>
      _i9.RemoveProductFromFavoritesUseCase(get<_i5.ProductRepository>()));
  gh.factory<_i10.AddProductToFavoritesUseCase>(
      () => _i10.AddProductToFavoritesUseCase(get<_i5.ProductRepository>()));
  gh.factory<_i11.CreateProductUseCase>(() => _i11.CreateProductUseCase(
      get<_i5.ProductRepository>(),
      get<_i12.CategoryRepository>(),
      get<_i13.ImageRepository>()));
  gh.factory<_i14.DeleteProductUseCase>(
      () => _i14.DeleteProductUseCase(get<_i5.ProductRepository>()));
  gh.factory<_i15.EditProductUseCase>(() => _i15.EditProductUseCase(
      get<_i5.ProductRepository>(),
      get<_i12.CategoryRepository>(),
      get<_i13.ImageRepository>()));
  gh.factory<_i16.GetFavoriteProductsUseCase>(
      () => _i16.GetFavoriteProductsUseCase(get<_i5.ProductRepository>()));
  gh.factory<_i17.GetProductDetailsUseCase>(
      () => _i17.GetProductDetailsUseCase(get<_i5.ProductRepository>()));
  gh.factory<_i18.GetProductsUseCase>(
      () => _i18.GetProductsUseCase(get<_i5.ProductRepository>()));
  gh.factory<_i19.GetStoreUseCase>(
      () => _i19.GetStoreUseCase(get<_i5.ProductRepository>()));
  gh.factory<_i20.ProductCubit>(() => _i20.ProductCubit(
      get<_i18.GetProductsUseCase>(),
      get<_i14.DeleteProductUseCase>(),
      get<_i16.GetFavoriteProductsUseCase>()));
  gh.factory<_i21.ProductDetailsCubit>(() => _i21.ProductDetailsCubit(
      get<_i17.GetProductDetailsUseCase>(),
      get<_i16.GetFavoriteProductsUseCase>()));
  gh.factory<_i22.ShoppingItemsCubit>(() => _i22.ShoppingItemsCubit(
      get<_i19.GetStoreUseCase>(), get<_i16.GetFavoriteProductsUseCase>()));
  gh.factory<_i23.CreateProductCubit>(
      () => _i23.CreateProductCubit(get<_i11.CreateProductUseCase>()));
  gh.singleton<_i24.FavoriteProductsCubit>(_i24.FavoriteProductsCubit(
      get<_i16.GetFavoriteProductsUseCase>(),
      get<_i10.AddProductToFavoritesUseCase>(),
      get<_i9.RemoveProductFromFavoritesUseCase>()));
  return get;
}
