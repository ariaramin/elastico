import 'package:elastico/app/config/theme/app_themes.dart';
import 'package:elastico/app/config/theme/colors/app_colors_extention.dart';
import 'package:elastico/app/config/theme/text_styles/app_text_theme_extention.dart';
import 'package:flutter/material.dart';

extension AppThemeExtension on ThemeData {
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? AppThemes.lightAppColors;

  AppTextThemeExtension get appTextTheme =>
      extension<AppTextThemeExtension>() ?? AppThemes.lightTextTheme;
}

extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);

  bool get isDark => theme.brightness == Brightness.dark;
}
