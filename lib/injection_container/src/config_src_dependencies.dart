import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';

import 'package:flutter_fir_e_commerce/injection_container/src/category/config_categories.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

Future<void> configureSrcDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  configureCategoriesDependencies(
    get,
    environment: environment,
  );
}
