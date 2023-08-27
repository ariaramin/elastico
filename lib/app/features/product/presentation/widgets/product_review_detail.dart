import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class ProductReviewDetatil extends StatelessWidget {
  const ProductReviewDetatil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          AppIcons.iconly_regular_bold_star,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(width: 4),
        Text(
          '4.5',
          style: context.theme.appTextTheme.tiny,
        ),
        const SizedBox(width: 4),
        Text(
          '(210 نظر)',
          style: context.theme.appTextTheme.tiny.copyWith(
            color: AppPalette.light.light40,
          ),
        ),
      ],
    );
  }
}
