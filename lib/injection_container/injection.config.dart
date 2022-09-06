// // GENERATED CODE - DO NOT MODIFY BY HAND

// // **************************************************************************
// // InjectableConfigGenerator
// // **************************************************************************

// // ignore_for_file: no_leading_underscores_for_library_prefixes
// import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
// import 'package:firebase_core/firebase_core.dart' as _i3;
// import 'package:get_it/get_it.dart' as _i1;
// import 'package:injectable/injectable.dart' as _i2;
// import 'package:internet_connection_checker/internet_connection_checker.dart'
//     as _i5;

// import '../core/network/network_info/network_info.dart' as _i6;
// import '../core/network/network_info/network_info_impl.dart' as _i7;
// import '../external/firebase/firebase_module.dart' as _i17;
// import '../external/internet_connection_checker/internet_connection_checker_module.dart'
//     as _i18;
// import '../src/category/data/data_sources/remote_data_source/category_remote_data_source.dart'
//     as _i8;
// import '../src/category/data/repositories/category_repository.dart' as _i10;
// import '../src/category/domain/repositories/category_repository.dart' as _i9;
// import '../src/category/domain/use_cases/create_category_use_case.dart' as _i11;
// import '../src/category/domain/use_cases/delete_category_use_case.dart' as _i13;
// import '../src/category/domain/use_cases/edit_category_use_case.dart' as _i14;
// import '../src/category/domain/use_cases/get_categories_use_case.dart' as _i15;
// import '../src/category/presentation/state_manegement/category_cubit/category_cubit.dart'
//     as _i16;
// import '../src/images/repository/image_repository.dart'
//     as _i12; // ignore_for_file: unnecessary_lambdas

// // ignore_for_file: lines_longer_than_80_chars
// /// initializes the registration of provided dependencies inside of [GetIt]
// Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
//     {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
//   final gh = _i2.GetItHelper(get, environment, environmentFilter);
//   final firebaseModule = _$FirebaseModule();
//   final connectionCheckerModule = _$ConnectionCheckerModule();
//   await gh.singletonAsync<_i3.FirebaseApp>(() => firebaseModule.firebaseApp,
//       preResolve: true);
//   gh.lazySingleton<_i4.FirebaseFirestore>(() => firebaseModule.firestore);
//   gh.lazySingleton<_i5.InternetConnectionChecker>(
//       () => connectionCheckerModule.connectionChecker);
//   gh.singleton<_i6.NetworkInfo>(
//       _i7.NetworkInfoImpl(get<_i5.InternetConnectionChecker>()));
//   gh.singleton<_i8.CategoryRemoteDataSource>(
//       _i8.CategoryRemoteDataSource(get<_i4.FirebaseFirestore>()));
//   gh.singleton<_i9.CategoryRepository>(_i10.CategoryRepositoryImpl(
//       get<_i6.NetworkInfo>(), get<_i8.CategoryRemoteDataSource>()));
//   gh.factory<_i11.CreateCategoryUseCase>(() => _i11.CreateCategoryUseCase(
//       get<_i9.CategoryRepository>(), get<_i12.ImageRepository>()));
//   gh.factory<_i13.DeleteCategoryUseCase>(
//       () => _i13.DeleteCategoryUseCase(get<_i9.CategoryRepository>()));
//   gh.factory<_i14.EditCategoryUseCase>(() => _i14.EditCategoryUseCase(
//       get<_i9.CategoryRepository>(), get<_i12.ImageRepository>()));
//   gh.factory<_i15.GetCategoriesUseCase>(
//       () => _i15.GetCategoriesUseCase(get<_i9.CategoryRepository>()));
//   gh.factory<_i16.CategoryCubit>(
//       () => _i16.CategoryCubit(get<_i15.GetCategoriesUseCase>()));
//   return get;
// }

// class _$FirebaseModule extends _i17.FirebaseModule {}

// class _$ConnectionCheckerModule extends _i18.ConnectionCheckerModule {}
