import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final bool isLoading;
  final Color? backgroundColor;
  final Function()? onPressed;

  const AppButton({
    super.key,
    required this.text,
    this.isPrimary = true,
    this.isLoading = false,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size.fromHeight(56),
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
      child: isLoading
          ? SizedBox(
              width: 28,
              height: 28,
              child: CircularProgressIndicator(
                color: AppPalette.light.light100,
                strokeWidth: 3.5,
              ),
            )
          : Text(text),
    );
  }
}
