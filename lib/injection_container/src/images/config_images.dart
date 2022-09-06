import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import './config_images.config.dart';

@InjectableInit(
  generateForDir: ['lib/src/images'],
  preferRelativeImports: false,
)
void configureImagesDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    $initGetIt(
      get,
      environment: environment?.name,
      environmentFilter: environmentFilter,
    );
