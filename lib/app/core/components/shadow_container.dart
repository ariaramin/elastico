import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  const ShadowContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: context.theme.appColors.surface,
        boxShadow: [
          BoxShadow(
            color: context.theme.appColors.shadow,
            blurRadius: 18,
          ),
        ],
      ),
      child: child,
    );
  }
}
