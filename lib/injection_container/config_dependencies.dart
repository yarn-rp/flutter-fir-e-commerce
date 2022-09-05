import 'package:flutter_fir_e_commerce/injection_container/core/config_core_dependencies.dart';
import 'package:flutter_fir_e_commerce/injection_container/external/config_external_dependencies.dart';
import 'package:flutter_fir_e_commerce/injection_container/src/config_src_dependencies.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

typedef GetItConfigFunction = void Function(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
});
const environment = Environment('prod');
final getIt = GetIt.instance;

void configureDependencies({
  Environment environment = const Environment('dev'),
}) {
  final configFunctions = <GetItConfigFunction>[
    configureSrcDependencies,
    configureExternalDependencies,
    configureCoreDependencies,
  ];

  return configFunctions.forEach(
    (f) => f(
      getIt,
      environment: environment,
    ),
  );
}
