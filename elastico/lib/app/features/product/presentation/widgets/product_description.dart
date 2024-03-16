import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class ProductDescription extends StatelessWidget {
  final String description;

  const ProductDescription({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: 18.w.horizontal + 10.h.top + 14.h.bottom,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'description'.tr(),
              style: context.theme.appTextTheme.regular2,
            ),
            8.hb,
            ReadMoreText(
              description,
              trimLines: 3,
              colorClickableText: context.theme.appColors.onBackground,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'see_more'.tr(),
              trimExpandedText: 'see_less'.tr(),
              style: context.theme.appTextTheme.small.copyWith(
                color: AppPalette.light.light20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
