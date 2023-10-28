import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartItemList extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartItemList({
    super.key,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: CartCard(cartItem: cartItems[index]),
      ),
    );
  }
}
