import 'package:elastico/app/core/components/cached_image.dart';
import 'package:elastico/app/core/config/route/app_routes_name.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutesName.productList,
        arguments: {
          'title': category.title,
          'filter': 'category=\'${category.id}\'',
        },
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 56,
            child: CachedImage(imageUrl: category.icon),
          ),
          const SizedBox(height: 6),
          Text(
            category.title,
            style: context.theme.appTextTheme.tiny,
          ),
        ],
      ),
    );
  }
}
