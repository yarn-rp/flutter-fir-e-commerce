import 'package:flutter_fir_e_commerce/injection_container/external/firebase/config_firebase_dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  generateForDir: ['lib/external/firebase'],
  preferRelativeImports: false,
)
void configureFirebaseDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    $initGetIt(
      get,
      environment: environment?.name,
      environmentFilter: environmentFilter,
    );
