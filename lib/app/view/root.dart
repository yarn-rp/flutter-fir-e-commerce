import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fir_e_commerce/app/view/home.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_app_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_search_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_bottom_tab_bar/dedicated_bottom_tab_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_buttons/adaptive_button.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/pages/categories_page.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/widgets/categories_carousel_widgets.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/pages/product_page.dart';

enum TabPageEnum {
  home(icon: CupertinoIcons.home, label: 'Home'),
  categories(
    icon: CupertinoIcons.selection_pin_in_out,
    label: 'Categories',
  ),
  products(
    icon: CupertinoIcons.square_line_vertical_square,
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
  const Root({
    super.key,
    this.initialPage = TabPageEnum.home,
  });

  final TabPageEnum initialPage;

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late int currentIndex;
  late PageController pageController;

  late FocusNode searchFocus;
  late ValueNotifier<bool> shouldShowSearch;
  late final TextEditingController _textController;
  @override
  void initState() {
    super.initState();

    shouldShowSearch = ValueNotifier(false);

    _textController = TextEditingController();

    searchFocus = FocusNode();

    // TODO: implement initState
    super.initState();

    shouldShowSearch = ValueNotifier(false);
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
  void dispose() {
    searchFocus.dispose();
    pageController.dispose();
    super.dispose();
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
        height: kToolbarHeight * 2,
        trailing: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.network(
                'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-1.png',
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            Row(
              children: [
                AdaptiveIconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.heart,
                    color: Theme.of(context).iconTheme.color,
                    size: 24,
                  ),
                ),
                AdaptiveIconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.shopping_cart,
                    color: Theme.of(context).iconTheme.color,
                    size: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
        bottom: AdaptiveSearchBar(
          shouldShowTrailing: shouldShowSearch,

          searchFocus: searchFocus,
          onChanged: (_) {},
          trailing: Text(
            'Cancel',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 18,
                  letterSpacing: 0.15,
                ),
          ),
          // topPadding: MediaQuery.of(context).viewPadding.top,
          height: kToolbarHeight,
          controller: _textController,
          onTapTrailing: (show) {
            setState(() {
              shouldShowSearch.value = show;
            });
          },
          onFocusChanged: (bool show) {
            if (show) {
              setState(() {
                shouldShowSearch.value = show;
              });
            }
          },
          onSubmitted: (s) {
            searchFocus.unfocus();
          },
        ),
      ),
      body: AnimatedCrossFade(
        layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) =>
            Stack(
          fit: StackFit.expand,
          alignment: Alignment.topCenter,
          children: [
            topChild,
            bottomChild,
          ],
        ),
        crossFadeState: !shouldShowSearch.value
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(
          milliseconds: 100,
        ),
        secondChild: Container(),
        firstChild: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            HomePage(),
            CategoriesPage(),
            ProductsPage(),
          ],
        ),
      ),
    );
  }
}
