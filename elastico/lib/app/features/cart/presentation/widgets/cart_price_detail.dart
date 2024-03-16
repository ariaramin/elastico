import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/shadow_container.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_price_detail_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class CartPriceDetail extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartPriceDetail({
    super.key,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    String totalProductPrice =
        '${cartItems.fold(0, (previousValue, element) => previousValue + (element.product.price * element.quantity))}'
            .seRagham();
    String totalDiscountPrice =
        '${cartItems.fold(0, (previousValue, element) => previousValue + (element.product.discountPrice * element.quantity))}'
            .seRagham();
    String totalFinalPrice =
        '${cartItems.fold(0, (previousValue, element) => previousValue + (element.product.finalPrice * element.quantity))}'
            .seRagham();
    return SliverPadding(
      padding: 18.w.all,
      sliver: SliverToBoxAdapter(
        child: ShadowContainer(
          padding: 8.w.all,
          child: Column(
            children: [
              CartPriceDetailItem(
                title: 'products_price'.tr(),
                price: totalProductPrice,
              ),
              CartPriceDetailItem(
                title: 'products_discount'.tr(),
                price: totalDiscountPrice,
                priceColor: AppPalette.red.red80,
              ),
              Padding(
                padding: 16.w.horizontal,
                child: const Divider(),
              ),
              CartPriceDetailItem(
                title: 'cart_total'.tr(),
                price: totalFinalPrice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
