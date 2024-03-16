import 'package:flutter/material.dart';

class AppPalette {
  // Violet
  static const violet = _VioletColors();

  // Red
  static const red = _RedColors();

  // Green
  static const green = _GreenColors();

  // Light
  static const light = _LightColors();

  // Dark
  static const dark = _DarkColors();

/////////// light
  // background = ffffff
  // on background = 212121
  // shadow color = 04060F
  // surface = ffffff
  // on surface = 212121
  // text field = FAFAFA
  // text field hint = 9E9E9E
  // 757575

////////// dark
  // background = 181A20
  // on background = ffffff
  // shadow color = 04060F
  // surface = 1F222A
  // on surface = ffffff
  // text field = 1F222A
  // text field hint = 9E9E9E
  // F5F5F5
  // DFDFE1
  // E1E1E2
}

class _VioletColors {
  const _VioletColors();

  final Color violet20 = const Color(0xffEEE5FF);
  final Color violet40 = const Color(0xffD3BDFF);
  final Color violet60 = const Color(0xffB18AFF);
  final Color violet80 = const Color(0xff8F57FF);
  final Color violet100 = const Color(0xff7F3DFF);
}

class _RedColors {
  const _RedColors();

  final Color red20 = const Color(0xffFDD5D7);
  final Color red40 = const Color(0xffFDA2A9);
  final Color red60 = const Color(0xffFD6F7A);
  final Color red80 = const Color(0xffFD5662);
  final Color red100 = const Color(0xffFD3C4A);
}

class _GreenColors {
  const _GreenColors();

  final Color green20 = const Color(0xffCFFAEA);
  final Color green40 = const Color(0xff93EACA);
  final Color green60 = const Color(0xff65D1AA);
  final Color green80 = const Color(0xff2AB784);
  final Color green100 = const Color(0xff00A86B);
}

class _LightColors {
  const _LightColors();

  final Color light20 = const Color(0xff757575);
  final Color light40 = const Color(0xff9E9E9E);
  final Color light60 = const Color(0xffEEEEEE);
  final Color light80 = const Color(0xffFAFAFA);
  final Color light100 = const Color(0xffFFFFFF);
}

class _DarkColors {
  const _DarkColors();

  final Color dark25 = const Color(0xff35383F);
  final Color dark50 = const Color(0xff1F222A);
  final Color dark75 = const Color(0xff181A20);
  final Color dark100 = const Color.fromRGBO(4, 6, 15, .05);
}
