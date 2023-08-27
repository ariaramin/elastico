import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDescription extends StatelessWidget {
  final String description;

  const ProductDescription({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'توضیحات',
          style: context.theme.appTextTheme.regular2,
        ),
        const SizedBox(height: 8),
        ReadMoreText(
          description,
          trimLines: 3,
          colorClickableText: context.theme.appColors.onBackground,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'مشاهده بیشتر',
          trimExpandedText: ' مشاهده کمتر',
          style: context.theme.appTextTheme.small
              .copyWith(color: AppPalette.light.light20),
        ),
      ],
    );
  }
}
