import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final int index;

  const CategoryCard({
    super.key,
    required this.category,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        AppRouterPaths.productList
            .replaceFirst(':title', category.title)
            .replaceFirst(':filter',
                'category=\'${category.id}\' || category.parent=\'${category.id}\''),
      ),
      child: AspectRatio(
        aspectRatio: 1 / .42,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xffEAEEEF),
            image: DecorationImage(
              image: CachedNetworkImageProvider(category.thumbnail),
              alignment:
                  index.isEven ? Alignment.centerRight : Alignment.centerLeft,
            ),
            boxShadow: [
              BoxShadow(
                color: context.theme.appColors.shadow,
                blurRadius: 18,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment:
                index.isEven ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    category.title,
                    style: context.theme.appTextTheme.title2.copyWith(
                      fontSize: 22,
                      color: AppPalette.dark.dark75,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 9,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppPalette.dark.dark75,
                    ),
                    child: Text(
                      'see_products'.tr(),
                      style: context.theme.appTextTheme.tiny.copyWith(
                        color: AppPalette.light.light100,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
