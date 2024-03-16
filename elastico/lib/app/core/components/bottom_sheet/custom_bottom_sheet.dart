import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBottomSheet extends StatelessWidget {
  final String title;
  final Widget content;
  final String? cancelText;
  final String? saveText;
  final Function()? onSavePressed;
  final Function()? onCancelPressed;

  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.content,
    this.cancelText,
    this.saveText,
    this.onSavePressed,
    this.onCancelPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 18.w.horizontal + MediaQuery.viewInsetsOf(context).bottom.bottom,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        color: context.theme.appColors.background,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          8.hb,
          Container(
            width: 32.w,
            height: 4.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.r),
              color: AppPalette.light.light60,
            ),
          ),
          24.hb,
          Text(
            title,
            style: context.theme.appTextTheme.title3,
          ),
          16.hb,
          const Divider(),
          8.hb,
          content,
          8.hb,
          const Divider(),
          16.hb,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  text: cancelText ?? 'لغو',
                  isPrimary: false,
                  onPressed: onCancelPressed ?? () => context.pop(),
                ),
              ),
              16.wb,
              Expanded(
                child: AppButton(
                  text: saveText ?? 'تایید',
                  onPressed: onSavePressed,
                ),
              ),
            ],
          ),
          16.hb,
        ],
      ),
    );
  }
}
