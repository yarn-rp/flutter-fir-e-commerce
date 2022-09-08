import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/widgets/categories_carousel_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CategoriesCarouselWidget(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
