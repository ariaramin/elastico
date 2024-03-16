import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemQuantityCounter extends StatelessWidget {
  final CartItem cartItem;

  const CartItemQuantityCounter({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CartBloc>();
    return Container(
      padding: 8.w.all,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppPalette.light.light100,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => bloc.addToCart(cartItem),
            child: Icon(
              Icons.add_rounded,
              size: 18.w,
              color: AppPalette.dark.dark75,
            ),
          ),
          8.wb,
          Text(
            cartItem.quantity.toString(),
            style: context.theme.appTextTheme.small.copyWith(
              color: AppPalette.dark.dark75,
              fontWeight: FontWeight.w600,
            ),
          ),
          8.wb,
          GestureDetector(
            onTap: () => bloc.removeFromCart(cartItem.id),
            child: Icon(
              Icons.remove_rounded,
              size: 18.w,
              color: AppPalette.dark.dark75,
            ),
          ),
        ],
      ),
    );
  }
}
