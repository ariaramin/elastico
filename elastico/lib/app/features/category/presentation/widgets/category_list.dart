import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:elastico/app/features/category/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categories;

  const CategoryList({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: 18.w.horizontal + 24.h.top,
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.responsive<int>(
            4,
            sm: 8,
          ),
          mainAxisSpacing: 18.h,
          crossAxisSpacing: 12.w,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) =>
            CategoryItem(category: categories[index]),
      ),
    );
  }
}
