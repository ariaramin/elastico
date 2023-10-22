import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/route/app_router.dart';
import 'package:elastico/app/config/theme/app_themes.dart';
import 'package:elastico/app/config/theme/cubit/theme_cubit.dart';
import 'package:elastico/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppThemes.fontFamily = FontFamily.shabnam;
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Elastico',
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
