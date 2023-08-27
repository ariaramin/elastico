import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/domain/entities/variant_item.dart';
import 'package:elastico/app/features/product/presentation/widgets/variant_option.dart';
import 'package:flutter/material.dart';

class ProductVariant extends StatefulWidget {
  final Variant variant;
  final Function(VariantItem selectedVariant) onVariantItemChanged;

  const ProductVariant({
    super.key,
    required this.variant,
    required this.onVariantItemChanged,
  });

  @override
  State<ProductVariant> createState() => _ProductVariantState();
}

class _ProductVariantState extends State<ProductVariant> {
  int _selectedItem = 0;

  @override
  void initState() {
    super.initState();
    final initialVariantItem = widget.variant.items[_selectedItem];
    widget.onVariantItemChanged(initialVariantItem);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.variant.title,
          style: context.theme.appTextTheme.regular2,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: widget.variant.items
              .map((item) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedItem = widget.variant.items.indexOf(item);
                    });
                    widget.onVariantItemChanged(item);
                  },
                  child: VariantOption(
                    title: item.title,
                    isSelected:
                        _selectedItem == widget.variant.items.indexOf(item),
                  )))
              .toList(),
        ),
      ],
    );
  }
}
