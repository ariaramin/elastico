import 'package:elastico/app/config/theme/colors/app_colors_extention.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/config/theme/text_styles/app_text_theme_extention.dart';
import 'package:elastico/app/config/theme/text_styles/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  static String? _fontFamily;

  static set fontFamily(String? value) {
    _fontFamily = value;
  }

  // Light Theme
  static final light = () {
    final defaultTheme = ThemeData.light();

    return ThemeData(
      brightness: Brightness.light,
      fontFamily: _fontFamily,
      scaffoldBackgroundColor: _lightAppColors.background,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: _lightAppColors.background,
        selectedItemColor: _lightAppColors.primary,
        selectedLabelStyle: TextStyle(fontSize: 12.sp),
        unselectedLabelStyle: TextStyle(fontSize: 12.sp),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: _lightAppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16.r),
          ),
        ),
      ),
      textTheme: defaultTheme.textTheme.copyWith(
        // Default text style for Text widget.
        bodyMedium: _lightTextTheme.regular3,
        titleSmall: _lightTextTheme.small,
      ),
      colorScheme: defaultTheme.colorScheme.copyWith(
        secondary: _lightAppColors.primary,
      ),
      extensions: [
        _lightAppColors,
        _lightTextTheme,
      ],
    );
  }();

  static final _lightAppColors = AppColorsExtension(
    primary: AppPalette.violet.violet100,
    secondary: AppPalette.violet.violet20,
    error: AppPalette.red.red100,
    onError: AppPalette.light.light100,
    success: AppPalette.green.green80,
    onSuccess: AppPalette.light.light100,
    background: AppPalette.light.light100,
    onBackground: AppPalette.dark.dark75,
    surface: AppPalette.light.light100,
    onSurface: AppPalette.dark.dark75,
    shadow: AppPalette.dark.dark100,
    textField: AppPalette.light.light80,
  );

  static get lightAppColors => _lightAppColors;

  static final _lightTextTheme = AppTextThemeExtension(
    titleX: AppTypography.titleX.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
    title1: AppTypography.title1.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
    title2: AppTypography.title2.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
    title3: AppTypography.title3.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
    regular1: AppTypography.regular1.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
    regular2: AppTypography.regular2.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
    regular3: AppTypography.regular3.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
    small: AppTypography.small.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
    tiny: AppTypography.tiny.copyWith(
      fontFamily: _fontFamily,
      color: _lightAppColors.onBackground,
    ),
  );

  static get lightTextTheme => _lightTextTheme;

  // Dark Theme
  static final dark = () {
    final defaultTheme = ThemeData.dark();

    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: _fontFamily,
      scaffoldBackgroundColor: _darkAppColors.background,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: _darkAppColors.background,
        selectedItemColor: _lightAppColors.primary,
        selectedLabelStyle: TextStyle(fontSize: 12.sp),
        unselectedLabelStyle: TextStyle(fontSize: 12.sp),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: _darkAppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16.r),
          ),
        ),
      ),
      textTheme: defaultTheme.textTheme.copyWith(
        // Default text style for Text widget.
        bodyMedium: _darkTextTheme.regular3,
        titleSmall: _darkTextTheme.small,
      ),
      colorScheme: defaultTheme.colorScheme.copyWith(
        secondary: _darkAppColors.primary,
      ),
      extensions: [
        _darkAppColors,
        _darkTextTheme,
      ],
    );
  }();

  static final _darkAppColors = AppColorsExtension(
    primary: AppPalette.violet.violet100,
    secondary: AppPalette.violet.violet20,
    error: AppPalette.red.red100,
    onError: AppPalette.light.light100,
    success: AppPalette.green.green80,
    onSuccess: AppPalette.light.light100,
    background: AppPalette.dark.dark75,
    onBackground: AppPalette.light.light100,
    surface: AppPalette.dark.dark50,
    onSurface: AppPalette.light.light100,
    shadow: AppPalette.dark.dark100,
    textField: AppPalette.dark.dark50,
  );

  static final _darkTextTheme = AppTextThemeExtension(
    titleX: AppTypography.titleX.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
    title1: AppTypography.title1.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
    title2: AppTypography.title2.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
    title3: AppTypography.title3.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
    regular1: AppTypography.regular1.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
    regular2: AppTypography.regular2.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
    regular3: AppTypography.regular3.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
    small: AppTypography.small.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
    tiny: AppTypography.tiny.copyWith(
      fontFamily: _fontFamily,
      color: _darkAppColors.onBackground,
    ),
  );
}
