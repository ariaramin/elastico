import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_variant_item.dart';
import 'package:flutter/material.dart';

class ProductVariants extends StatelessWidget {
  final List<Variant> variants;

  const ProductVariants({
    super.key,
    required this.variants,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...variants.map((variant) {
              return ProductVariantItem(
                variant: variant,
                onVariantItemChanged: (selectedVariant) {},
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
