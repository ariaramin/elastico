import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/domain/entities/variant_item.dart';
import 'package:elastico/app/features/product/presentation/widgets/variant_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductVariantItem extends StatefulWidget {
  final Variant variant;
  final Function(VariantItem selectedVariantItem) onVariantItemChanged;

  const ProductVariantItem({
    super.key,
    required this.variant,
    required this.onVariantItemChanged,
  });

  @override
  State<ProductVariantItem> createState() => _ProductVariantItemState();
}

class _ProductVariantItemState extends State<ProductVariantItem> {
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
        8.hb,
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
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
        14.hb,
      ],
    );
  }
}
