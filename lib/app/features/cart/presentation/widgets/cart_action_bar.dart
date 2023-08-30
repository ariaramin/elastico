import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/action_bar.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class CartActionBar extends StatelessWidget {
  const CartActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ActionBar(
      buttonText: 'continue_the_purchase'.tr(),
      onPressed: () {},
      trailingWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'cart_total'.tr(),
            style: context.theme.appTextTheme.tiny.copyWith(
              color: AppPalette.light.light40,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '۱،۲۰۰،۰۰۰',
                style: context.theme.appTextTheme.regular2.copyWith(
                  color: AppPalette.light.light100,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                'toman'.tr(),
                style: context.theme.appTextTheme.tiny.copyWith(
                  color: AppPalette.light.light100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
