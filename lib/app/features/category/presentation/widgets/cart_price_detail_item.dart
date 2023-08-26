import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class CartPriceDetailItem extends StatelessWidget {
  final String title;
  final String price;
  final Color? priceColor;

  const CartPriceDetailItem({
    super.key,
    required this.title,
    required this.price,
    this.priceColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        title,
        style: context.theme.appTextTheme.small.copyWith(
          color: context.theme.appColors.onBackground.withOpacity(.6),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            price,
            style: context.theme.appTextTheme.regular3.copyWith(
              color: priceColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'تومان',
            style: context.theme.appTextTheme.tiny.copyWith(
              color: priceColor,
            ),
          ),
        ],
      ),
    );
  }
}
