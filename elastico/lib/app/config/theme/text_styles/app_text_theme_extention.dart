import 'package:flutter/material.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  const AppTextThemeExtension({
    required this.titleX,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.regular1,
    required this.regular2,
    required this.regular3,
    required this.small,
    required this.tiny,
  });

  final TextStyle titleX;
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;
  final TextStyle regular1;
  final TextStyle regular2;
  final TextStyle regular3;
  final TextStyle small;
  final TextStyle tiny;

  @override
  ThemeExtension<AppTextThemeExtension> copyWith({
    TextStyle? titleX,
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
    TextStyle? regular1,
    TextStyle? regular2,
    TextStyle? regular3,
    TextStyle? small,
    TextStyle? tiny,
  }) {
    return AppTextThemeExtension(
      titleX: titleX ?? this.titleX,
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      regular1: regular1 ?? this.regular1,
      regular2: regular2 ?? this.regular2,
      regular3: regular3 ?? this.regular3,
      small: small ?? this.small,
      tiny: tiny ?? this.tiny,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    if (other is! AppTextThemeExtension) {
      return this;
    }

    return AppTextThemeExtension(
      titleX: TextStyle.lerp(titleX, other.titleX, t)!,
      title1: TextStyle.lerp(title1, other.title1, t)!,
      title2: TextStyle.lerp(title2, other.title2, t)!,
      title3: TextStyle.lerp(title3, other.title3, t)!,
      regular1: TextStyle.lerp(regular1, other.regular1, t)!,
      regular2: TextStyle.lerp(regular2, other.regular2, t)!,
      regular3: TextStyle.lerp(regular3, other.regular3, t)!,
      small: TextStyle.lerp(small, other.small, t)!,
      tiny: TextStyle.lerp(tiny, other.tiny, t)!,
    );
  }
}
