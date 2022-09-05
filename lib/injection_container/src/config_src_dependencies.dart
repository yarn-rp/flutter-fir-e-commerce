import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/injection_container/src/categories/config_categories.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

void configureSrcDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) {
  final configFunctions = <GetItConfigFunction>[
    configureCategoriesDependencies,
  ];

  return configFunctions.forEach(
    (f) => f(
      getIt,
      environment: environment,
    ),
  );
}
