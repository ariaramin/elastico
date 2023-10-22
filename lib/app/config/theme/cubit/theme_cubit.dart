import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

@lazySingleton
class ThemeCubit extends Cubit<ThemeState> {
  final SharedPreferences _prefs;

  ThemeCubit(this._prefs)
      : super(
          ThemeState(_prefs.getBool('isDark') ??
              WidgetsBinding.instance.platformDispatcher.platformBrightness ==
                  Brightness.dark),
        );

  void toggleTheme() async {
    await _prefs.setBool('isDark', !state.isDark);
    emit(ThemeState(!state.isDark));
  }
}
