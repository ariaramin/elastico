import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:flutter/material.dart';

import 'product_item.dart';

class ProductWrap extends StatefulWidget {
  final List<Product> products;
  final EdgeInsetsGeometry? padding;
  final bool isSliver;
  final Function()? onMaxScroll;

  const ProductWrap({
    super.key,
    required this.products,
    this.padding,
    this.isSliver = false,
    this.onMaxScroll,
  });

  @override
  State<ProductWrap> createState() => _ProductWrapState();
}

class _ProductWrapState extends State<ProductWrap> {
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
        ? SliverToBoxAdapter(
            child: Padding(
              padding: widget.padding ??
                  EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: widget.products.length <= 1 ? 16 : 8,
                  ),
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: widget.products.length <= 1
                    ? WrapAlignment.start
                    : WrapAlignment.center,
                children: List.generate(
                  widget.products.length,
                  (index) => ProductItem(
                    product: widget.products[index],
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: widget.padding ??
                EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: widget.products.length <= 1 ? 16 : 8,
                ),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: widget.products.length <= 1
                  ? WrapAlignment.start
                  : WrapAlignment.center,
              children: List.generate(
                widget.products.length,
                (index) => ProductItem(
                  product: widget.products[index],
                ),
              ),
            ),
          );
  }
}
