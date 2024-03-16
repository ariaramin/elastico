import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final bool isLoading;
  final double? height;
  final Color? backgroundColor;
  final Function()? onPressed;

  const AppButton({
    super.key,
    required this.text,
    this.isPrimary = true,
    this.isLoading = false,
    this.height,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromHeight(height ?? 52.h),
        elevation: 0,
        shadowColor: AppPalette.light.light40.withOpacity(.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        backgroundColor: isPrimary
            ? backgroundColor ?? context.theme.appColors.primary
            : context.theme.appColors.secondary,
        foregroundColor: isPrimary
            ? AppPalette.light.light100
            : context.theme.appColors.primary,
        disabledBackgroundColor: AppPalette.light.light40,
        textStyle: context.theme.appTextTheme.regular3.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? SizedBox(
              width: 28.w,
              height: 28.w,
              child: CircularProgressIndicator(
                color: AppPalette.light.light100,
                strokeWidth: 3.5,
              ),
            )
          : Text(text),
    );
  }
}
