import 'package:elastico/app/features/cart/presentation/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemGrid extends StatelessWidget {
  const CartItemGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 2.4,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const CartItem();
      },
    );
  }
}
