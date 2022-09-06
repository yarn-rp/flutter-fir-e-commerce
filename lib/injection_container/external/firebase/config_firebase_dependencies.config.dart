// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_core/firebase_core.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:flutter_fir_e_commerce/external/firebase/firebase_module.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  await gh.singletonAsync<_i3.FirebaseApp>(() => firebaseModule.firebaseApp,
      preResolve: true);
  gh.lazySingleton<_i4.FirebaseFirestore>(() => firebaseModule.firestore);
  gh.singleton<_i5.FirebaseStorage>(firebaseModule.storage);
  return get;
}

class _$FirebaseModule extends _i6.FirebaseModule {}
