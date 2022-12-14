import 'package:flutter_fir_e_commerce/injection_container/core/network/config_network_dependencies.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

Future<void> configureCoreDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) async =>
    configureNetworkDependencies(
      get,
      environment: environment,
    );
