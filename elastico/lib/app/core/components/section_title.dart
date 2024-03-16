import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? trailingText;
  final bool hasTrailingText;
  final Function()? onTap;

  const SectionTitle({
    super.key,
    required this.title,
    this.trailingText,
    this.hasTrailingText = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: 18.w.horizontal + 18.h.top,
        child: Row(
          children: [
            Text(
              title,
              style: context.theme.appTextTheme.regular2,
            ),
            if (hasTrailingText) ...{
              const Spacer(),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  trailingText ?? 'see_all'.tr(),
                  style: context.theme.appTextTheme.tiny.copyWith(
                    color: context.theme.appColors.primary,
                  ),
                ),
              ),
            }
          ],
        ),
      ),
    );
  }
}
