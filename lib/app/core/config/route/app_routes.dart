import 'package:elastico/app/core/common/bottom_navigation_cubit.dart';
import 'package:elastico/app/core/common/slider_cubit.dart';
import 'package:elastico/app/core/config/route/app_routes_name.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
import 'package:elastico/app/features/intro/presentation/bloc/network_bloc.dart';
import 'package:elastico/app/features/intro/presentation/screens/splash_screen.dart';
import 'package:elastico/app/features/product/presentation/bloc/product/product_bloc.dart';
import 'package:elastico/app/features/product/presentation/bloc/product_list/product_list_bloc.dart';
import 'package:elastico/app/features/product/presentation/screens/product_list_screen.dart';
import 'package:elastico/app/features/product/presentation/screens/product_screen.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:elastico/app/features/wishlist/presentation/screens/wishlist_screen.dart';
import 'package:elastico/locator.dart';
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
            create: (context) => ProductListBloc(
              wishlistBloc: locator.get(),
              getProducts: locator.get(),
            )..fetchProducts(filterSequence),
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
                create: (context) => ProductBloc(
                  getProduct: locator.get(),
                  getProductVariants: locator.get(),
                )..fetchProduct(productId),
              ),
              BlocProvider(
                create: (context) =>
                    CommentBloc(getProductComments: locator.get())
                      ..fetchProductComments(productId),
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
    }
  }
}
