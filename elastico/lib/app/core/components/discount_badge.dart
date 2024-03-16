import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Padding(
        padding: 2.h.vertical + 8.w.horizontal,
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
