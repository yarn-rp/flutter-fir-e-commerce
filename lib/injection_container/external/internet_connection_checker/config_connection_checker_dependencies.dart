import 'package:flutter_fir_e_commerce/injection_container/external/internet_connection_checker/config_connection_checker_dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  generateForDir: ['lib/external/internet_connection_checker'],
  preferRelativeImports: false,
)
void configureConnectionCheckerDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    $initGetIt(
      get,
      environment: environment?.name,
      environmentFilter: environmentFilter,
    );
