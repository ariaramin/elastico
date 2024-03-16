import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Padding(
        padding: 24.w.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.responsive<double>(context.width / 2, sm: 224.h),
              child: Assets.images.noData.svg(),
            ),
            16.hb,
            Text(
              'not_found'.tr(),
              style: context.theme.appTextTheme.title3,
            ),
            8.hb,
            Text(
              'search_not_found'.tr(),
              style: context.theme.appTextTheme.regular3.copyWith(
                color: AppPalette.light.light20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
