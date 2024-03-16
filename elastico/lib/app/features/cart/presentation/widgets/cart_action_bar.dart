import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/action_bar.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/cubit/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class CartActionBar extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartActionBar({
    super.key,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    double totalFinalPrice = cartItems.fold(
      0,
      (previousValue, element) =>
          previousValue + (element.product.finalPrice * element.quantity),
    );
    return ActionBar(
      buttonText: 'continue_the_purchase'.tr(),
      onPressed: () =>
          context.read<PaymentCubit>().startPayment(totalFinalPrice),
      trailingWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'cart_total'.tr(),
            style: context.theme.appTextTheme.tiny.copyWith(
              color: AppPalette.light.light40,
            ),
          ),
          4.hb,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                totalFinalPrice.toInt().toString().seRagham(),
                style: context.theme.appTextTheme.regular2.copyWith(
                  color: AppPalette.light.light100,
                ),
              ),
              6.wb,
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
