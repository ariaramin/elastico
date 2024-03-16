import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionBar extends StatelessWidget {
  final String buttonText;
  final Widget trailingWidget;
  final Function()? onPressed;

  const ActionBar({
    super.key,
    required this.buttonText,
    required this.trailingWidget,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.w.all,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: context.isDark
            ? context.theme.appColors.surface
            : context.theme.appColors.onBackground,
        boxShadow: [
          BoxShadow(
            color: context.theme.appColors.shadow,
            blurRadius: 18.r,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: AppButton(
              text: buttonText,
              height: 48.h,
              backgroundColor: context.theme.appColors.success,
              onPressed: onPressed,
            ),
          ),
          Expanded(child: trailingWidget),
        ],
      ),
    );
  }
}
