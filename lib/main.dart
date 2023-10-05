import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app.dart';
import 'package:elastico/app/config/locator/locator.dart';
import 'package:elastico/app/core/helpers/hive_helper.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await HiveHelper().init();
  configureDependencies();
  locator.get<WishlistBloc>().getWishlist();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('fa', 'IR')],
      path: 'assets/translations',
      fallbackLocale: const Locale('fa', 'IR'),
      startLocale: const Locale('fa', 'IR'),
      child: const MyApp(),
    ),
  );
}
