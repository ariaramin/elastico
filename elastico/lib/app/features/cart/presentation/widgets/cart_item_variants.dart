import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:flutter/material.dart';

class CartItemVariants extends StatelessWidget {
  final Variant variant;

  const CartItemVariants({
    super.key,
    required this.variant,
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
          '${variant.title}: ${variant.items.first.title}',
          style: context.theme.appTextTheme.tiny.copyWith(
            color: context.theme.appColors.onBackground.withOpacity(.7),
          ),
        ),
      ],
    );
  }
}
