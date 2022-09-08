import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/app/presentation/widgets/store_items_widget.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/widgets/categories_carousel_widgets.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/widgets/category_card_widget.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/shopping_items_cubit/shopping_items_cubit.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/widgets/product_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<ShoppingItemsCubit>())],
      child: _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView({
    super.key,
  });

  @override
  State<_HomeView> createState() => __HomePageSView();
}

class __HomePageSView extends State<_HomeView>
    with AutomaticKeepAliveClientMixin {
  final dataKey = new GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ShoppingItemsCubit>().getStore();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: true,
      addAutomaticKeepAlives: true,
      // itemExtent: 1000000,
      cacheExtent: double.infinity,
      children: [
        CategoriesCarouselWidget(
          key: ValueKey('jojo'),
          onExploreNow: () {
            if (dataKey.currentContext != null) {
              Scrollable.ensureVisible(
                dataKey.currentContext!,
                duration: Duration(milliseconds: 750),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            }
          },
        ),
        const SizedBox(
          height: 60,
        ),
        StoreItemsWidget(
          key: dataKey,
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
