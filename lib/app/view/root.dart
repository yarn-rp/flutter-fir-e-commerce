import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_app_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_search_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_bottom_tab_bar/dedicated_bottom_tab_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/pages/categories_page.dart';

enum TabPageEnum {
  home(icon: Icons.home, label: 'Home'),
  categories(
    icon: Icons.category,
    label: 'Categories',
  ),
  products(
    icon: Icons.shop_two,
    label: 'Products',
  );

  const TabPageEnum({
    required this.icon,
    required this.label,
    this.key,
  });

  AdaptiveTabItem get tabItem => AdaptiveTabItem(
        icon,
        label,
        key: key,
      );

  final IconData icon;
  final String label;
  final Key? key;
}

class Root extends StatefulWidget {
  final TabPageEnum initialPage;
  const Root({
    super.key,
    this.initialPage = TabPageEnum.home,
  });

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController pageController;
  late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switch (widget.initialPage) {
      case TabPageEnum.home:
        currentIndex = 0;
        break;
      case TabPageEnum.categories:
        currentIndex = 1;
        break;
      case TabPageEnum.products:
        currentIndex = 2;
        break;
    }

    pageController = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      bottomAppBar: AdaptiveBottomTabBar(
        activeColor: Theme.of(context).primaryColor,
        controller: pageController,
        items: [
          ...TabPageEnum.values.map((e) => e.tabItem),
        ],
      ),
      appBar: AdaptiveAppBar(
        bottom: AdaptiveSearchBar(
          controller: TextEditingController(),
          height: kToolbarHeight,
          onChanged: (s) {},
          onFocusChanged: (bool show) {},
          onSubmitted: (s) {},
          searchFocus: FocusNode(),
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          Container(
              // color: Colors.red,
              ),
          CategoriesPage(),
          Container(
              // color: Colors.green,
              ),
        ],
      ),
    );
  }
}
