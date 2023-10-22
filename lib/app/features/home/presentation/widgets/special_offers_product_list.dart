import 'package:elastico/app/core/components/product/product_item.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';

class SpecialOffersProductList extends StatelessWidget {
  final List<Product> products;

  const SpecialOffersProductList({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 306,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 8,
              ),
              child: ProductItem(product: products[index]),
            );
          },
        ),
      ),
    );
  }
}
