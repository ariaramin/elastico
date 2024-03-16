import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VariantOption extends StatelessWidget {
  final String title;
  final bool isSelected;

  const VariantOption({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.w,
      height: 32.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: !isSelected
            ? Border.all(
                color: AppPalette.light.light40,
              )
            : null,
        color: isSelected ? context.theme.appColors.primary : null,
      ),
      child: Center(
        child: Text(
          title,
          style: context.theme.appTextTheme.small.copyWith(
            color: isSelected
                ? AppPalette.light.light100
                : AppPalette.light.light40,
          ),
        ),
      ),
    );
  }
}
