import 'package:elastico/app/core/components/cached_image.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        AppRouterPaths.productList
            .replaceFirst(':title', category.title)
            .replaceFirst(':filter', 'category=\'${category.id}\''),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 58.w,
            child: CachedImage(imageUrl: category.icon),
          ),
          6.hb,
          Text(
            category.title,
            style: context.theme.appTextTheme.tiny,
          ),
        ],
      ),
    );
  }
}
