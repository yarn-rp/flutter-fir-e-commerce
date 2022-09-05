import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/injection_container/core/network/config_network_dependencies.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

void configureCoreDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) {
  final configFunctions = <GetItConfigFunction>[
    configureNetworkDependencies,
  ];

  return configFunctions.forEach(
    (f) => f(
      getIt,
      environment: environment,
    ),
  );
}
