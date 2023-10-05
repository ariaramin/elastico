import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class CartItemQuantityCounter extends StatelessWidget {
  const CartItemQuantityCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppPalette.light.light100,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.add_rounded,
              size: 18,
              color: AppPalette.dark.dark75,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '2',
            style: context.theme.appTextTheme.small.copyWith(
              color: AppPalette.dark.dark75,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.remove_rounded,
              size: 18,
              color: AppPalette.dark.dark75,
            ),
          ),
        ],
      ),
    );
  }
}
