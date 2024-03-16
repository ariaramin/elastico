import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart';
import 'package:elastico/app/features/auth/presentation/cubit/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:elastico/app/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:elastico/app/features/auth/presentation/cubit/register/register_cubit.dart';
import 'package:elastico/app/features/auth/presentation/screens/edit_profile_screen.dart';
import 'package:elastico/app/features/auth/presentation/screens/login_screen.dart';
import 'package:elastico/app/features/auth/presentation/screens/register_screen.dart';
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:elastico/app/features/cart/presentation/cubit/payment_cubit.dart';
import 'package:elastico/app/features/category/presentation/bloc/bloc/category_bloc.dart';
import 'package:elastico/app/features/category/presentation/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:elastico/app/core/common/slider_cubit.dart';
import 'package:elastico/app/config/locator/locator.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/features/auth/presentation/screens/profile_screen.dart';
import 'package:elastico/app/features/cart/presentation/screens/cart_screen.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
import 'package:elastico/app/features/home/presentation/bloc/home_bloc.dart';
import 'package:elastico/app/features/home/presentation/screens/home_screen.dart';
import 'package:elastico/app/features/intro/presentation/bloc/network_bloc.dart';
import 'package:elastico/app/features/intro/presentation/screens/splash_screen.dart';
import 'package:elastico/app/features/product/presentation/bloc/product/product_bloc.dart';
import 'package:elastico/app/features/product/presentation/bloc/product_list/product_list_bloc.dart';
import 'package:elastico/app/features/product/presentation/screens/product_list_screen.dart';
import 'package:elastico/app/features/product/presentation/screens/product_screen.dart';
import 'package:elastico/app/features/search/presentation/bloc/search_bloc.dart';
import 'package:elastico/app/features/search/presentation/screens/search_screen.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:elastico/app/features/wishlist/presentation/screens/wishlist_screen.dart';

import 'package:elastico/main_screen.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> _homeNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> _categoriesNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> _cartNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> _profileNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: AppRouterPaths.splash,
    navigatorKey: _rootNavigatorKey,
    routes: _createRoutes(),
  );

  static GoRouter get router => _router;

  static List<RouteBase> _createRoutes() {
    return [
      _createSplashRoute(),
      _createLoginRoute(),
      _createRegisterRoute(),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainScreen(
          navigationShell: navigationShell,
        ),
        branches: [
          _createHomeRoute(),
          _createCategoriesRoute(),
          _createCartRoute(),
          _createProfileRoute(),
        ],
      ),
      _createProductListRoute(),
      _createProductRoute(),
      _createWishlistRoute(),
      _createSearchRoute(),
      _createEditProfileRoute(),
    ];
  }

  static GoRoute _createSplashRoute() {
    return _createRoute(
      AppRouterPaths.splash,
      (context, state) => BlocProvider(
        create: (context) =>
            NetworkBloc(locator.get())..checkNetworkConnection(),
        child: const SplashScreen(),
      ),
    );
  }

  static GoRoute _createLoginRoute() {
    return _createRoute(
      AppRouterPaths.login,
      (context, state) => BlocProvider(
        create: (context) => LoginCubit(locator.get()),
        child: const LoginScreen(),
      ),
    );
  }

  static GoRoute _createRegisterRoute() {
    return _createRoute(
      AppRouterPaths.register,
      (context, state) => BlocProvider(
        create: (context) => RegisterCubit(locator.get()),
        child: const RegisterScreen(),
      ),
    );
  }

  static StatefulShellBranch _createHomeRoute() {
    return _createShellBranch(
      AppRouterPaths.home,
      (context, state) => BlocProvider(
        create: (context) =>
            HomeBloc(locator.get(), locator.get())..initialRequest(),
        child: const HomeScreen(),
      ),
      navigatorKey: _homeNavigatorKey,
    );
  }

  static StatefulShellBranch _createCategoriesRoute() {
    return _createShellBranch(
      AppRouterPaths.categories,
      (context, state) => BlocProvider(
        create: (context) => CategoryBloc(locator.get())..fetchCategory(),
        child: const CategoryScreen(),
      ),
      navigatorKey: _categoriesNavigatorKey,
    );
  }

  static StatefulShellBranch _createCartRoute() {
    return _createShellBranch(
      AppRouterPaths.cart,
      (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: locator.get<CartBloc>(),
          ),
          BlocProvider(
            create: (context) => PaymentCubit(locator.get()),
          )
        ],
        child: const CartScreen(),
      ),
      navigatorKey: _cartNavigatorKey,
    );
  }

  static StatefulShellBranch _createProfileRoute() {
    return _createShellBranch(
      AppRouterPaths.profile,
      (context, state) => const ProfileScreen(),
      navigatorKey: _profileNavigatorKey,
    );
  }

  static GoRoute _createProductListRoute() {
    return _createRoute(
      AppRouterPaths.productList,
      (context, state) {
        final title = state.pathParameters['title']!;
        final filterSequence = state.pathParameters['filter']!;
        return BlocProvider(
          create: (context) => ProductListBloc(locator.get(), locator.get())
            ..fetchProducts(filterSequence),
          child: ProductListScreen(
            title: title,
            filter: filterSequence,
          ),
        );
      },
    );
  }

  static GoRoute _createProductRoute() {
    return _createRoute(
      AppRouterPaths.product,
      (context, state) {
        final productId = state.pathParameters['productId']!;
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (BuildContext context) => SliderCubit(),
            ),
            BlocProvider(
              create: (context) => ProductBloc(locator.get(), locator.get())
                ..fetchProduct(productId),
            ),
            BlocProvider(
              create: (context) => CommentBloc(
                locator.get(),
                locator.get(),
                locator.get(),
                locator.get(),
              )..fetchProductComments(productId),
            ),
            BlocProvider.value(
              value: locator.get<WishlistBloc>(),
            ),
            BlocProvider.value(
              value: locator.get<CartBloc>(),
            ),
          ],
          child: ProductScreen(productId: productId),
        );
      },
    );
  }

  static GoRoute _createWishlistRoute() {
    return _createRoute(
      AppRouterPaths.wishlist,
      (context, state) => BlocProvider.value(
        value: locator.get<WishlistBloc>()..getWishlist(),
        child: const WishlistScreen(),
      ),
    );
  }

  static GoRoute _createSearchRoute() {
    return _createRoute(
      AppRouterPaths.search,
      (context, state) => BlocProvider(
        create: (context) => SearchBloc(
          locator.get(),
          locator.get(),
        ),
        child: const SearchScreen(),
      ),
    );
  }

  static GoRoute _createEditProfileRoute() {
    return _createRoute(
      AppRouterPaths.editProfile,
      (context, state) => BlocProvider(
        create: (context) => EditProfileCubit(),
        child: const EditProfileScreen(),
      ),
    );
  }

  static GoRoute _createRoute(
    String path,
    Widget Function(BuildContext context, GoRouterState state) builder,
  ) {
    return GoRoute(
      path: path,
      parentNavigatorKey: _rootNavigatorKey,
      builder: builder,
    );
  }

  static StatefulShellBranch _createShellBranch(
    String path,
    Widget Function(BuildContext context, GoRouterState state) builder, {
    GlobalKey<NavigatorState>? navigatorKey,
  }) {
    return StatefulShellBranch(
      navigatorKey: navigatorKey,
      routes: [
        GoRoute(
          path: path,
          builder: builder,
          redirect: (context, state) {
            final appState = context.read<AppBloc>().state;
            return (appState.status == AppStatus.unauthenticated)
                ? AppRouterPaths.login
                : null;
          },
        ),
      ],
    );
  }
}
