import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_variant_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductVariants extends StatelessWidget {
  final List<Variant> variants;
  final Function(Variant selectedVariant) onVariantChanged;

  const ProductVariants({
    super.key,
    required this.variants,
    required this.onVariantChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: 18.w.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...variants.map(
              (variant) => ProductVariantItem(
                variant: variant,
                onVariantItemChanged: (selectedVariantItem) {
                  final selectedVariant =
                      variant.copyWith(items: [selectedVariantItem]);
                  onVariantChanged(selectedVariant);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
