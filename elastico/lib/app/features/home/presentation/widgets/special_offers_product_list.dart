import 'package:elastico/app/core/components/product/product_item.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        height: 308.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: 18.h.vertical + 10.w.horizontal,
              child: ProductItem(product: products[index]),
            );
          },
        ),
      ),
    );
  }
}
