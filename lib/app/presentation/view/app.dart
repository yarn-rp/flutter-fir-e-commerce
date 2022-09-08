// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/app/presentation/view/root.dart';
import 'package:flutter_fir_e_commerce/core/theme/dark_theme.dart';
import 'package:flutter_fir_e_commerce/core/theme/light_theme.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/l10n/l10n.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/pages/create_category_page.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/pages/create_product_page.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/pages/favorite_products_page.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/pages/product_details.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/favorite_products_cubit/favorite_products_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

part '../routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<FavoriteProductsCubit>(),
        ),
      ],
      child: MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        theme: themeLight,
        darkTheme: themeDark,
        themeMode: ThemeMode.dark,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        // home: const CategoriesPage(),
      ),
    );
  }
}
