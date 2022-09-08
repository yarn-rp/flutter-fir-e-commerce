import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_fir_e_commerce/injection_container/src/search/config_search.config.dart';

@InjectableInit(
  generateForDir: ['lib/src/search'],
  preferRelativeImports: false,
)
void configureSearchDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    $initGetIt(
      get,
      environment: environment?.name,
      environmentFilter: environmentFilter,
    );
