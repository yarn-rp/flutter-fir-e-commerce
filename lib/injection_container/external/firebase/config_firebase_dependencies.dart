import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_fir_e_commerce/firebase_options.dart';
import 'package:flutter_fir_e_commerce/injection_container/external/firebase/config_firebase_dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  generateForDir: ['lib/external/firebase'],
  preferRelativeImports: false,
)
Future<void> configureFirebaseDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  $initGetIt(
    get,
    environment: environment?.name,
    environmentFilter: environmentFilter,
  );
}
