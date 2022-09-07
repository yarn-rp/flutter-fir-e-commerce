import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import './config_products.config.dart';

@InjectableInit(
  generateForDir: ['lib/src/product'],
  preferRelativeImports: false,
)
void configureProductDependencies(
  GetIt get, {
  Environment? environment,
  EnvironmentFilter? environmentFilter,
}) =>
    $initGetIt(
      get,
      environment: environment?.name,
      environmentFilter: environmentFilter,
    );
