import 'package:elastico/app/core/components/product_item.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;
  final EdgeInsetsGeometry? padding;
  final bool shrinkWrap;

  const ProductGrid({
    super.key,
    required this.products,
    this.padding,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 8,
          ),
      child: GridView.builder(
        shrinkWrap: shrinkWrap,
        physics: shrinkWrap ? const NeverScrollableScrollPhysics() : null,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.responsive<int>(
            2,
            sm: 4,
            md: 4,
          ),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: context.responsive<double>(
            1 / 1.55,
            sm: 1 / 1.54,
            md: 1 / 1.54,
          ),
        ),
        itemCount: products.length,
        itemBuilder: (context, index) => ProductItem(product: products[index]),
      ),
    );
  }
}
