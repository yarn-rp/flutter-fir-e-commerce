import 'dart:async';

import 'package:flutter_fir_e_commerce/injection_container/core/config_core_dependencies.dart';
import 'package:flutter_fir_e_commerce/injection_container/external/config_external_dependencies.dart';
import 'package:flutter_fir_e_commerce/injection_container/src/config_src_dependencies.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

typedef GetItConfigFunction = FutureOr<void> Function(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
});
// const environment = Environment('prod');
final sl = GetIt.I;

Future<void> configureDependencies({
  Environment environment = const Environment('dev'),
}) async {
  await configureExternalDependencies(
    sl,
    environment: environment,
  );
  await configureCoreDependencies(
    sl,
    environment: environment,
  );
  await configureSrcDependencies(
    sl,
    environment: environment,
  );
}
