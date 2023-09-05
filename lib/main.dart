import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/config/route/app_routes.dart';
import 'package:elastico/app/core/config/route/app_routes_name.dart';
import 'package:elastico/app/core/config/theme/app_themes.dart';
import 'package:elastico/app/core/helpers/hive_helper.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:elastico/locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await HiveHelper().init();
  await initializeLocator();
  locator.get<WishlistBloc>().add(GetWishlist());
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppThemes.fontFamily = 'Shabnam';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Elastico',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.light,
      initialRoute: AppRoutesName.main,
      onGenerateRoute: (settings) => AppRoutes.generate(settings),
    );
  }
}
