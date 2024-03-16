import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/cached_image.dart';
import 'package:elastico/app/core/components/discount_badge.dart';
import 'package:elastico/app/core/components/shadow_container.dart';
import 'package:elastico/app/config/locator/locator.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator.get<WishlistBloc>(),
      child: GestureDetector(
        onTap: () => context.push(
          AppRouterPaths.product.replaceFirst(':productId', product.id),
        ),
        child: ShadowContainer(
          width: 182.w,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Padding(
                    padding: 8.w.all,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: SizedBox(
                          width: double.infinity,
                          child: CachedImage(imageUrl: product.thumbnail),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 14,
                    right: 14,
                    child: _favoriteBadge(),
                  ),
                  if (product.discountPrice != 0) ...{
                    Positioned(
                      bottom: 4,
                      left: 5,
                      child: DiscountBadge(percent: product.discountPercent),
                    ),
                  }
                ],
              ),
              _getBottomSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _favoriteBadge() {
    return BlocBuilder<WishlistBloc, WishlistState>(
      builder: (context, state) {
        return Container(
          width: 26.w,
          height: 26.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppPalette.dark.dark75,
          ),
          child: Center(
            child: Icon(
              state.wishlist.any((element) => element.id == product.id)
                  ? AppIcons.iconly_regular_bold_heart
                  : AppIcons.iconly_regular_outline_heart,
              color: state.wishlist.any((element) => element.id == product.id)
                  ? AppPalette.red.red80
                  : AppPalette.light.light100,
              size: 16.w,
            ),
          ),
        );
      },
    );
  }

  Widget _getBottomSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: 10.w.horizontal,
          child: Text(
            product.name,
            style: context.theme.appTextTheme.small,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        8.hb,
        Container(
          height: 54.h,
          padding: 10.w.horizontal,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r),
            ),
            color: context.theme.appColors.primary,
            boxShadow: [
              BoxShadow(
                color: context.theme.appColors.primary,
                blurRadius: 18.r,
                spreadRadius: -14,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                AppIcons.iconly_regular_bold_arrow___right_circle,
                color: AppPalette.light.light100,
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (product.discountPrice != 0) ...{
                    Text(
                      product.price.toString().seRagham(),
                      style: context.theme.appTextTheme.tiny.copyWith(
                        color: AppPalette.light.light100,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  },
                  Text(
                    product.finalPrice.toString().seRagham(),
                    style: context.theme.appTextTheme.regular3.copyWith(
                      color: AppPalette.light.light100,
                    ),
                  ),
                ],
              ),
              8.hb,
              Text(
                'toman'.tr(),
                style: context.theme.appTextTheme.tiny.copyWith(
                  color: AppPalette.light.light100,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
