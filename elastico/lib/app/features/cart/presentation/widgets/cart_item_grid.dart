import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemGrid extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartItemGrid({
    super.key,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 16.w,
        childAspectRatio: 2.4,
      ),
      itemCount: cartItems.length,
      itemBuilder: (context, index) => CartCard(cartItem: cartItems[index]),
    );
  }
}
