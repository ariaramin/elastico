part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isDarkTheme,
    required String languageCode,
  }) = _SettingsState;
}
