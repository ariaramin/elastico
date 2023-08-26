import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_quantity_counter.dart';
import 'package:flutter/material.dart';

class CartItemPrice extends StatelessWidget {
  const CartItemPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
        ),
        color: context.theme.appColors.primary,
        boxShadow: [
          BoxShadow(
            color: context.theme.appColors.primary,
            blurRadius: 18,
            spreadRadius: -14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          const CartItemQuantityCounter(),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '۱،۲۰۰،۰۰۰',
                style: context.theme.appTextTheme.tiny.copyWith(
                  color: AppPalette.light.light100,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                '۱،۲۰۰،۰۰۰',
                style: context.theme.appTextTheme.regular3.copyWith(
                  color: AppPalette.light.light100,
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
          Text(
            'تومان',
            style: context.theme.appTextTheme.tiny.copyWith(
              color: AppPalette.light.light100,
            ),
          ),
        ],
      ),
    );
  }
}
