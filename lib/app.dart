import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/route/app_router.dart';
import 'package:elastico/app/config/theme/app_themes.dart';
import 'package:elastico/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppThemes.fontFamily = FontFamily.shabnam;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Elastico',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      // themeMode: ThemeMode.light,
      routerConfig: AppRouter.router,
    );
  }
}
