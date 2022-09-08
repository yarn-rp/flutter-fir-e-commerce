part of '../view/app.dart';

TabPageEnum _getTabPageFromRoute(String route) {
  switch (route) {
    case 'home':
      return TabPageEnum.home;

    case 'categories':
      return TabPageEnum.categories;

    case 'products':
      return TabPageEnum.products;

    default:
      return TabPageEnum.home;
  }
}

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/:screen(home|categories|products)',
      routes: [
        GoRoute(
          path: 'favorites-products',
          builder: (BuildContext context, GoRouterState state) =>
              const FavoriteProductsPage(),
        ),
        GoRoute(
          path: 'create',
          builder: (BuildContext context, GoRouterState state) {
            final screen = state.params['screen']!;
            final initialPage = _getTabPageFromRoute(screen);
            if (initialPage == TabPageEnum.categories) {
              return const CreateCategoryPage();
            }
            if (initialPage == TabPageEnum.products) {
              return const CreateProductPage();
            }
            return Container();
          },
        ),
        GoRoute(
          path: ':id',
          builder: (BuildContext context, GoRouterState state) {
            final productId = state.params['id']!;

            return ProductDetailsPage(
              productId: productId,
            );
          },
        ),
      ],
      builder: (BuildContext context, GoRouterState state) {
        final screen = state.params['screen']!;
        final initialPage = _getTabPageFromRoute(screen);

        return Root(
          initialPage: initialPage,
        );
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const Root(),
    ),
  ],
);
