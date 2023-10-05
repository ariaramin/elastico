import 'package:elastico/app/core/common/bottom_navigation_cubit.dart';
import 'package:elastico/app/core/common/slider_cubit.dart';
import 'package:elastico/app/config/locator/locator.dart';
import 'package:elastico/app/config/route/app_routes_name.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.splash:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => NetworkBloc(networkHelper: locator.get())
              ..add(CheckNetworkConnection()),
            child: const SplashScreen(),
          ),
          settings: settings,
        );

      case AppRoutesName.main:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => BottomNavigationCubit(),
            child: const MainScreen(),
          ),
          settings: settings,
        );

      case AppRoutesName.productList:
        final arguments = settings.arguments as Map<String, dynamic>;
        final title = arguments['title'];
        final filterSequence = arguments['filter'];

        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ProductListBloc(locator.get(), locator.get())
              ..fetchProducts(filterSequence),
            child: ProductListScreen(
              title: title,
              filter: filterSequence,
            ),
          ),
          settings: settings,
        );

      case AppRoutesName.product:
        final arguments = settings.arguments as Map<String, dynamic>;
        final productId = arguments['productId'];

        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (BuildContext context) => SliderCubit(),
              ),
              BlocProvider(
                create: (context) => ProductBloc(locator.get(), locator.get())
                  ..fetchProduct(productId),
              ),
              BlocProvider(
                create: (context) =>
                    CommentBloc(locator.get())..fetchProductComments(productId),
              ),
              BlocProvider.value(
                value: locator.get<WishlistBloc>(),
              ),
            ],
            child: ProductScreen(productId: productId),
          ),
          settings: settings,
        );

      case AppRoutesName.wishlist:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: locator.get<WishlistBloc>()..getWishlist(),
            child: const WishlistScreen(),
          ),
          settings: settings,
        );

      case AppRoutesName.search:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SearchBloc(locator.get()),
            child: const SearchScreen(),
          ),
          settings: settings,
        );
    }
  }
}
