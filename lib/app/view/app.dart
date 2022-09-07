// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/app/view/root.dart';
import 'package:flutter_fir_e_commerce/core/theme/light_theme.dart';
import 'package:flutter_fir_e_commerce/l10n/l10n.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/pages/categories_page.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/pages/create_category_page.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/pages/create_product_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/dark_theme.dart';

part '../routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: themeLight,
      darkTheme: themeDark,
      themeMode: ThemeMode.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      // home: const CategoriesPage(),
    );
  }
}
