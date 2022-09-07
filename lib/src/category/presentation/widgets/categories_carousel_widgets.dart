import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_buttons/adaptive_button.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/state_manegement/category_cubit/category_cubit.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/widgets/category_card_widget.dart';
import 'package:collection/collection.dart';
import 'package:go_router/go_router.dart';

class CategoriesCarouselWidget extends StatelessWidget {
  const CategoriesCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CategoryCubit>(),
      child: const _CategoriesCarouselWidget(),
    );
  }
}

class _CategoriesCarouselWidget extends StatefulWidget {
  const _CategoriesCarouselWidget({super.key});

  @override
  State<_CategoriesCarouselWidget> createState() =>
      __CategoriesCarouselWidgetState();
}

class __CategoriesCarouselWidgetState extends State<_CategoriesCarouselWidget> {
  final _scrollController1 = ScrollController(initialScrollOffset: 100);
  final _scrollController2 = ScrollController(initialScrollOffset: 85);
  final _scrollController3 = ScrollController(initialScrollOffset: 140);
  late final List<ScrollController> controllersList;
  @override
  void initState() {
    super.initState();
    controllersList = [
      _scrollController1,
      _scrollController2,
      _scrollController3
    ];
    context.read<CategoryCubit>().getCategories();
  }

  void _startAnimation() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final minScrollExtent1 = _scrollController1.position.minScrollExtent;
      final maxScrollExtent1 = _scrollController1.position.maxScrollExtent;
      final minScrollExtent2 = _scrollController2.position.minScrollExtent;
      final maxScrollExtent2 = _scrollController2.position.maxScrollExtent;
      final minScrollExtent3 = _scrollController3.position.minScrollExtent;
      final maxScrollExtent3 = _scrollController3.position.maxScrollExtent;
      //
      animateToMaxMin(
        maxScrollExtent1,
        minScrollExtent1,
        maxScrollExtent1,
        250,
        _scrollController1,
      );
      animateToMaxMin(
        maxScrollExtent2,
        minScrollExtent2,
        maxScrollExtent2,
        250,
        _scrollController2,
      );
      animateToMaxMin(
        maxScrollExtent3,
        minScrollExtent3,
        maxScrollExtent3,
        250,
        _scrollController3,
      );
    });
  }

  Future<void> animateToMaxMin(
    double max,
    double min,
    double direction,
    int seconds,
    ScrollController scrollController,
  ) =>
      scrollController
          .animateTo(
        direction,
        duration: Duration(seconds: seconds),
        curve: Curves.linear,
      )
          .then((value) {
        animateToMaxMin(
          max,
          min,
          direction == max ? min : max,
          seconds,
          scrollController,
        );
      });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryCubit, CategoryState>(
      listener: (context, state) {
        if (state is CategoriesLoaded) {
          _startAnimation();
        }
      },
      builder: (context, state) {
        if (state is CategoriesLoading) {
          return const CircularProgressIndicator.adaptive();
        }
        if (state is CategoriesError) {
          return Center(
            child: Text(state.failure.toString()),
          );
        }
        final chunks = <List<Category>>[];
        const chunkSize = 3;
        final categories = [...state.categoriesSafe];
        for (var i = 0; i < state.categoriesSafe.length; i += chunkSize) {
          chunks.add(categories.sublist(
            i,
            i + chunkSize > categories.length
                ? categories.length
                : i + chunkSize,
          ));
        }
        return Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                'https://images.unsplash.com/photo-1543582890-139a4ff9946e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHByb2R1Y3QlMjBjb2xvcnN8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=1500&q=1500',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
                child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).backgroundColor.withOpacity(0.5),
                  Theme.of(context).backgroundColor
                ],
              )),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Thousands of products at one click',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "We've got you covered with the best products from the best brands.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CategoryListView(
                  skip: 1,
                  scrollController: _scrollController1,
                  images: [...state.categoriesSafe].sublist(
                    0,
                    (state.categoriesSafe.length / 3).floor(),
                  ),
                ),
                CategoryListView(
                  scrollController: _scrollController2,
                  images: [...state.categoriesSafe].sublist(
                    (state.categoriesSafe.length / 3).floor() + 1,
                    (state.categoriesSafe.length / 3 * 2).floor(),
                  ),
                ),
                CategoryListView(
                  skip: 1,
                  scrollController: _scrollController3,
                  images: [...state.categoriesSafe].sublist(
                    (state.categoriesSafe.length / 3 * 2).floor() + 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                AdaptiveButton(
                  child: CupertinoButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      context.go('/categories');
                    },
                    child: Text('Explore now'),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class CategoryListView extends StatelessWidget {
  final ScrollController scrollController;
  final List<Category> images;
  final int skip;

  const CategoryListView({
    super.key,
    required this.scrollController,
    required this.images,
    this.skip = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: images.length + skip,
          itemBuilder: (context, index) {
            if (index < skip) {
              return SizedBox(
                width: 80 * 16 / 9,
              );
            }
            return SizedBox(
              width: 80 * 16 / 9,
              child: CarouselItemWidget(
                category: images[index - skip],
              ),
            );
          }),
    );
  }
}

class CarouselItemWidget extends StatelessWidget {
  const CarouselItemWidget({
    super.key,
    required this.category,
  });
  final Category category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 4,
        borderOnForeground: true,
        color: Theme.of(context).cardColor,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              category.imageUrl,
              fit: BoxFit.cover,
            ),
            ColoredBox(
              color: category.color.withOpacity(0.4),
            ),
            Center(
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  shadows: [
                    const Shadow(
                      offset: Offset.infinite,
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
