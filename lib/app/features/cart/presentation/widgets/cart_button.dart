import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: context.theme.appColors.background,
        boxShadow: [
          BoxShadow(
            color: context.theme.appColors.onBackground.withOpacity(.05),
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: AppButton(
              text: 'ادامه فرایند خرید',
              backgroundColor: context.theme.appColors.success,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'cart_total'.tr(),
                  style: context.theme.appTextTheme.tiny.copyWith(
                    color: context.theme.appColors.onBackground.withOpacity(.6),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '۱،۲۰۰،۰۰۰',
                      style: context.theme.appTextTheme.regular2.copyWith(
                        color: context.theme.appColors.onBackground,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'toman'.tr(),
                      style: context.theme.appTextTheme.tiny.copyWith(
                        color: context.theme.appColors.onBackground,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
