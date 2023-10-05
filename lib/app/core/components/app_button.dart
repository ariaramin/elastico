import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final Color? backgroundColor;
  final Function()? onPressed;

  const AppButton({
    super.key,
    required this.text,
    this.isPrimary = true,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 18,
        ),
        elevation: 0,
        shadowColor: AppPalette.light.light40.withOpacity(.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
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
      child: Text(text),
    );
  }
}
