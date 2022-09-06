import 'dart:async';

import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/injection_container/external/firebase/config_firebase_dependencies.dart';
import 'package:flutter_fir_e_commerce/injection_container/external/internet_connection_checker/config_connection_checker_dependencies.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

Future<void> configureExternalDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  final configFunctions = <GetItConfigFunction>[
    configureFirebaseDependencies,
    configureConnectionCheckerDependencies,
  ];

  await Future.wait([
    ...configFunctions.map(
      (f) async => await f(
        get,
        environment: environment,
      ),
    )
  ]);
}
