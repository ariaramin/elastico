import 'package:elastico/app/core/components/product_item.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatefulWidget {
  final List<Product> products;
  final EdgeInsetsGeometry? padding;
  final bool shrinkWrap;
  final bool isSliver;
  final Function()? onMaxScroll;

  const ProductGrid({
    super.key,
    required this.products,
    this.padding,
    this.shrinkWrap = false,
    this.isSliver = false,
    this.onMaxScroll,
  });

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset ==
          _scrollController.position.maxScrollExtent) {
        if (widget.onMaxScroll != null) {
          widget.onMaxScroll!();
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isSliver
        ? SliverPadding(
            padding: widget.padding ??
                const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 8,
                ),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.responsive<int>(
                  2,
                  sm: 4,
                ),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: context.responsive<double>(
                  1 / 1.55,
                  sm: 1 / 1.54,
                ),
              ),
              itemCount: widget.products.length,
              itemBuilder: (context, index) =>
                  ProductItem(product: widget.products[index]),
            ),
          )
        : Padding(
            padding: widget.padding ??
                const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 8,
                ),
            child: GridView.builder(
              controller: _scrollController,
              shrinkWrap: widget.shrinkWrap,
              physics: widget.shrinkWrap
                  ? const NeverScrollableScrollPhysics()
                  : null,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.responsive<int>(
                  2,
                  sm: 4,
                ),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: context.responsive<double>(
                  1 / 1.55,
                  sm: 1 / 1.54,
                  // md: 1 / 1.55,
                ),
              ),
              itemCount: widget.products.length,
              itemBuilder: (context, index) =>
                  ProductItem(product: widget.products[index]),
            ),
          );
  }
}
