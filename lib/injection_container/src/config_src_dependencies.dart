import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';

import 'package:flutter_fir_e_commerce/injection_container/src/category/config_categories.dart';
import 'package:flutter_fir_e_commerce/injection_container/src/images/config_images.dart';
import 'package:flutter_fir_e_commerce/injection_container/src/product/config_products.dart';
import 'package:flutter_fir_e_commerce/injection_container/src/search/config_search.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

typedef InitFeatureFunction = void Function(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
});
Future<void> configureSrcDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  final featuresToInit = <InitFeatureFunction>[
    configureCategoriesDependencies,
    configureImagesDependencies,
    configureProductDependencies,
    configureSearchDependencies,
  ];

  featuresToInit.forEach(
    (e) => e(get, environment: environment),
  );
  // configureCategoriesDependencies(
  //   get,
  //   environment: environment,
  // );
  // configureImagesDependencies(
  //   get,
  //   environment: environment,
  // );
  // configureProductDependencies(get, environment: environment);
}
