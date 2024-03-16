import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app.dart';
import 'package:elastico/app/config/locator/locator.dart';
import 'package:elastico/app/features/auth/presentation/cubit/settings/settings_cubit.dart';
import 'package:elastico/app/core/services/local/hive_service.dart';
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    EasyLocalization.ensureInitialized(),
    HiveService().init(),
    configureDependencies()
  ]);
  locator.get<AppBloc>().initial();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('fa')],
      path: 'assets/translations',
      fallbackLocale: const Locale('fa'),
      startLocale: const Locale('fa'),
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: locator.get<SettingsCubit>(),
          ),
          BlocProvider.value(
            value: locator.get<AppBloc>(),
          ),
        ],
        child: MyApp(),
      ),
    ),
  );
}
