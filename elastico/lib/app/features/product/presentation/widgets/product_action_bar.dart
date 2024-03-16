import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/action_bar.dart';
import 'package:elastico/app/core/components/discount_badge.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ProductActionBar extends StatelessWidget {
  final Product product;
  final Function() onButtonPressed;

  const ProductActionBar({
    super.key,
    required this.product,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ActionBar(
      buttonText: 'add_to_cart'.tr(),
      onPressed: onButtonPressed,
      trailingWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (product.discountPrice != 0) ...{
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DiscountBadge(percent: product.discountPercent),
                6.wb,
                Text(
                  product.price.toString().seRagham(),
                  style: context.theme.appTextTheme.small.copyWith(
                    color: AppPalette.light.light40,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          },
          4.hb,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                product.finalPrice.toString().seRagham(),
                style: context.theme.appTextTheme.regular2.copyWith(
                  color: context.isDark
                      ? context.theme.appColors.onBackground
                      : context.theme.appColors.background,
                ),
              ),
              6.wb,
              Text(
                'toman'.tr(),
                style: context.theme.appTextTheme.tiny.copyWith(
                  color: context.isDark
                      ? context.theme.appColors.onBackground
                      : context.theme.appColors.background,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
