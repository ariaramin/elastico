import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/search/domain/entities/filter.dart';
import 'package:elastico/app/features/search/domain/entities/filter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterVariant extends StatefulWidget {
  final Filter filter;
  final FilterItem? initialItem;
  final Function(FilterItem filterItem) onItemSelected;

  const FilterVariant({
    super.key,
    required this.filter,
    this.initialItem,
    required this.onItemSelected,
  });

  @override
  State<FilterVariant> createState() => _FilterVariantState();
}

class _FilterVariantState extends State<FilterVariant> {
  FilterItem? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.initialItem;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.filter.title,
          style: context.theme.appTextTheme.regular3,
        ),
        8.hb,
        Wrap(
          spacing: 12.w,
          children: widget.filter.items
              .map(
                (item) => InputChip(
                  selected: _selectedItem == item,
                  showCheckmark: false,
                  backgroundColor: context.theme.appColors.background,
                  selectedColor: context.theme.appColors.onBackground,
                  label: Text(item.title),
                  labelStyle: context.theme.appTextTheme.tiny.copyWith(
                    color: _selectedItem == item
                        ? context.theme.appColors.background
                        : null,
                  ),
                  side: BorderSide(
                    color: context.theme.appColors.onBackground,
                  ),
                  labelPadding: 12.w.horizontal,
                  onPressed: () {
                    setState(
                      () => _selectedItem != item
                          ? _selectedItem = item
                          : _selectedItem = null,
                    );
                    widget.onItemSelected(item);
                  },
                ),
              )
              .toList(),
        ),
        8.hb,
      ],
    );
  }
}
