import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_quantity_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class CartItemPrice extends StatelessWidget {
  final CartItem cartItem;

  const CartItemPrice({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      padding: 10.w.horizontal,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.r),
        ),
        color: context.theme.appColors.primary,
        boxShadow: [
          BoxShadow(
            color: context.theme.appColors.primary,
            blurRadius: 18.r,
            spreadRadius: -14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          CartItemQuantityCounter(cartItem: cartItem),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (cartItem.product.discountPrice != 0) ...{
                Text(
                  cartItem.product.price.toString().seRagham(),
                  style: context.theme.appTextTheme.tiny.copyWith(
                    color: AppPalette.light.light100,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              },
              Text(
                cartItem.product.finalPrice.toString().seRagham(),
                style: context.theme.appTextTheme.regular3.copyWith(
                  color: AppPalette.light.light100,
                ),
              ),
            ],
          ),
          8.wb,
          Text(
            'toman'.tr(),
            style: context.theme.appTextTheme.tiny.copyWith(
              color: AppPalette.light.light100,
            ),
          ),
        ],
      ),
    );
  }
}
