import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final bool hasTrailingText;
  final Function()? onTap;

  const SectionTitle({
    super.key,
    required this.title,
    this.hasTrailingText = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
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
                  'see_all'.tr(),
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
