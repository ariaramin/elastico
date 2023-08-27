import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class DiscountBadge extends StatelessWidget {
  final int percent;

  const DiscountBadge({
    super.key,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppPalette.red.red80,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 8,
        ),
        child: Text(
          '$percent%',
          style: context.theme.appTextTheme.tiny.copyWith(
            color: AppPalette.light.light100,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
