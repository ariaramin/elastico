import 'package:bloc/bloc.dart';
import 'package:elastico/app/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

@lazySingleton
class SettingsCubit extends Cubit<SettingsState> {
  final SharedPreferences _prefs;

  SettingsCubit(this._prefs)
      : super(
          SettingsState(
            isDarkTheme: _prefs.getBool(Constants.themeKey) ??
                WidgetsBinding.instance.platformDispatcher.platformBrightness ==
                    Brightness.dark,
            languageCode: _prefs.getString(Constants.languageKey) ?? 'fa',
          ),
        );

  void toggleTheme() async {
    await _prefs.setBool(Constants.themeKey, !state.isDarkTheme);
    emit(state.copyWith(isDarkTheme: !state.isDarkTheme));
  }

  void changeLanguage(String languageCode) async {
    await _prefs.setString(Constants.languageKey, languageCode);
    emit(state.copyWith(languageCode: languageCode));
  }
}
