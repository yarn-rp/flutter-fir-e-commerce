import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/app/presentation/view/home.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_app_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_search_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_bottom_tab_bar/dedicated_bottom_tab_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_buttons/adaptive_button.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/pages/categories_page.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/pages/product_page.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/favorite_products_cubit/favorite_products_cubit.dart';
import 'package:flutter_fir_e_commerce/src/search/presentation/pages/search_page.dart';
import 'package:flutter_fir_e_commerce/src/search/presentation/state_management/search_cubit/search_cubit.dart';
import 'package:go_router/go_router.dart';

enum TabPageEnum {
  home(icon: CupertinoIcons.home, label: 'Home'),
  // categories(
  //   icon: CupertinoIcons.selection_pin_in_out,
  //   label: 'Categories',
  // ),
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

class Root extends StatelessWidget {
  const Root({
    super.key,
    this.initialPage = TabPageEnum.home,
  });

  final TabPageEnum initialPage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SearchCubit>(),
      child: RootView(
        initialPage: initialPage,
      ),
    );
  }
}

class RootView extends StatefulWidget {
  const RootView({
    super.key,
    this.initialPage = TabPageEnum.home,
  });

  final TabPageEnum initialPage;

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late int currentIndex;
  late PageController pageController;

  late FocusNode searchFocus;
  late ValueNotifier<bool> shouldShowSearch;
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    shouldShowSearch = ValueNotifier(false);

    _textController = TextEditingController()
      ..addListener(() {
        context.read<SearchCubit>().search(
              query: _textController.text,
            );
      });

    searchFocus = FocusNode();

    shouldShowSearch = ValueNotifier(false);
    switch (widget.initialPage) {
      case TabPageEnum.home:
        currentIndex = 0;
        break;

      case TabPageEnum.products:
        currentIndex = 1;
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
                BlocBuilder<FavoriteProductsCubit, FavoriteProductsState>(
                  builder: (context, state) {
                    return AdaptiveIconButton(
                      onPressed: () {
                        context.go('/home/favorites-products');
                      },
                      icon: Badge(
                        badgeColor: Theme.of(context).primaryColor,
                        showBadge: state.productsSafe.isNotEmpty,
                        badgeContent: Text(
                          state.productsSafe.length.toString(),
                        ),
                        child: Icon(
                          CupertinoIcons.heart,
                          color: Theme.of(context).iconTheme.color,
                          size: 24,
                        ),
                      ),
                    );
                  },
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
        secondChild: SearchPage(
          bloc: context.read<SearchCubit>(),
        ),
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
