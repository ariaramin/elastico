import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppPalette.light.light100,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => bloc.addToCart(cartItem),
            child: Icon(
              Icons.add_rounded,
              size: 18,
              color: AppPalette.dark.dark75,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            cartItem.quantity.toString(),
            style: context.theme.appTextTheme.small.copyWith(
              color: AppPalette.dark.dark75,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => bloc.removeFromCart(cartItem.id),
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
