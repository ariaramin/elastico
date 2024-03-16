import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: 8.h.vertical,
        child: CartCard(cartItem: cartItems[index]),
      ),
    );
  }
}
