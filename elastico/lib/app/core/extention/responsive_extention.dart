import 'package:flutter/material.dart';

extension ResponsiveExtention on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  T responsive<T>(
    T defaultVal, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    return width >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultVal)
        : width >= 1024
            ? (lg ?? md ?? sm ?? defaultVal)
            : width >= 768
                ? (md ?? sm ?? defaultVal)
                : width >= 640
                    ? (sm ?? defaultVal)
                    : defaultVal;
  }
}
