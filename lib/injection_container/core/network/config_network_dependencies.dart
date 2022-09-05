import 'package:flutter_fir_e_commerce/injection_container/core/network/config_network_dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  generateForDir: ['lib/core/network'],
  preferRelativeImports: false,
)
void configureNetworkDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    $initGetIt(
      get,
      environment: environment?.name,
      environmentFilter: environmentFilter,
    );
