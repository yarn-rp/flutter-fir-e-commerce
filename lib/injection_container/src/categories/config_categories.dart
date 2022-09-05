import 'package:flutter_fir_e_commerce/injection_container/src/categories/config_categories.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

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
