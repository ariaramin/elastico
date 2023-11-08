import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
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
      padding: EdgeInsets.fromLTRB(
        18,
        0,
        18,
        MediaQuery.viewInsetsOf(context).bottom,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: context.theme.appColors.background,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          Container(
            width: 32,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: AppPalette.light.light60,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: context.theme.appTextTheme.title3,
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          content,
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  text: cancelText ?? 'لغو',
                  isPrimary: false,
                  onPressed: onCancelPressed ?? () => context.pop(),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: AppButton(
                  text: saveText ?? 'تایید',
                  onPressed: onSavePressed,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
