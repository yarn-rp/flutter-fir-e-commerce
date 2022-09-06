import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import './config_categories.config.dart';

@InjectableInit(
  generateForDir: ['lib/src/category'],
  preferRelativeImports: false,
)
void configureCategoriesDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    $initGetIt(
      get,
      environment: environment?.name,
      environmentFilter: environmentFilter,
    );
