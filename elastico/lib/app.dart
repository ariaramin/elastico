import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/route/app_router.dart';
import 'package:elastico/app/config/theme/app_themes.dart';
import 'package:elastico/app/features/auth/presentation/cubit/settings/settings_cubit.dart';
import 'package:elastico/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    AppThemes.fontFamily = FontFamily.shabnam;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return ScreenUtilInit(
          designSize: const Size(428, 882),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: Locale(state.languageCode),
            title: 'Elastico',
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            themeMode: state.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            routerConfig: AppRouter.router,
          ),
        );
      },
    );
  }
}
