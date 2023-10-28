import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app.dart';
import 'package:elastico/app/config/locator/locator.dart';
import 'package:elastico/app/config/theme/cubit/theme_cubit.dart';
import 'package:elastico/app/core/helpers/hive_helper.dart';
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await HiveHelper().init();
  await configureDependencies();
  locator.get<AppBloc>().initial();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('fa', 'IR')],
      path: 'assets/translations',
      fallbackLocale: const Locale('fa', 'IR'),
      startLocale: const Locale('fa', 'IR'),
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: locator.get<ThemeCubit>(),
          ),
          BlocProvider.value(
            value: locator.get<AppBloc>(),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}
