import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class CartItemVariants extends StatelessWidget {
  const CartItemVariants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const CircleAvatar(
        //   backgroundColor: Colors.black,
        //   radius: 8,
        // ),
        // const SizedBox(width: 6),
        // Text(
        //   'مشکی',
        //   style: context.theme.appTextTheme.tiny.copyWith(
        //     color: context.theme.appColors.onBackground.withOpacity(.7),
        //   ),
        // ),
        // const SizedBox(width: 6),
        // Text(
        //   '|',
        //   style: context.theme.appTextTheme.tiny.copyWith(
        //     color: context.theme.appColors.onBackground.withOpacity(.7),
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
        // const SizedBox(width: 6),
        Text(
          'سایز',
          style: context.theme.appTextTheme.tiny.copyWith(
            color: context.theme.appColors.onBackground.withOpacity(.7),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          'L',
          style: context.theme.appTextTheme.tiny.copyWith(
            color: context.theme.appColors.onBackground.withOpacity(.7),
          ),
        ),
      ],
    );
  }
}
