// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_core/firebase_core.dart' as _i3;
import 'package:flutter_fir_e_commerce/external/firebase/firebase_facade.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseFacade = _$FirebaseFacade();
  gh.singletonAsync<_i3.FirebaseApp>(() => firebaseFacade.firebaseApp);
  gh.singleton<_i4.FirebaseFirestore>(firebaseFacade.firestore);
  return get;
}

class _$FirebaseFacade extends _i5.FirebaseFacade {}