import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/shadow_container.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_price_detail_item.dart';
import 'package:flutter/material.dart';

class CartPriceDetail extends StatelessWidget {
  const CartPriceDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(18),
      sliver: SliverToBoxAdapter(
        child: ShadowContainer(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              CartPriceDetailItem(
                title: 'products_price'.tr(),
                price: '۱،۲۰۰،۰۰۰ ',
              ),
              CartPriceDetailItem(
                title: 'products_discount'.tr(),
                price: '۱،۲۰۰،۰۰۰ ',
                priceColor: AppPalette.red.red80,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              CartPriceDetailItem(
                title: 'cart_total'.tr(),
                price: '۱،۲۰۰،۰۰۰ ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
