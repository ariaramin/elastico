import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.onError,
    required this.success,
    required this.onSuccess,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.shadow,
    required this.textField,
  });

  final Color primary;
  final Color secondary;
  final Color error;
  final Color onError;
  final Color success;
  final Color onSuccess;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color shadow;
  final Color textField;

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? error,
    Color? onError,
    Color? success,
    Color? onSuccess,
    Color? background,
    Color? onBackground,
    Color? surface,
    Color? onSurface,
    Color? shadow,
    Color? textField,
  }) {
    return AppColorsExtension(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        error: error ?? this.error,
        onError: onError ?? this.onError,
        success: success ?? this.success,
        onSuccess: onSuccess ?? this.onSuccess,
        background: background ?? this.background,
        onBackground: onBackground ?? this.onBackground,
        surface: surface ?? this.surface,
        onSurface: onSurface ?? this.onSurface,
        shadow: shadow ?? this.shadow,
        textField: textField ?? this.textField);
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      textField: Color.lerp(textField, other.textField, t)!,
    );
  }
}
