import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/components/cached_image.dart';
import 'package:elastico/app/core/components/discount_badge.dart';
import 'package:elastico/app/core/components/shadow_container.dart';
import 'package:elastico/app/core/config/route/app_routes_name.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:elastico/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        onTap: () => Navigator.pushNamed(
          context,
          AppRoutesName.product,
          arguments: {'productId': product.id},
        ),
        child: ShadowContainer(
          width: 172,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
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
          width: 26,
          height: 26,
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
              size: 16,
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            product.name,
            style: context.theme.appTextTheme.small,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 54,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            color: context.theme.appColors.primary,
            boxShadow: [
              BoxShadow(
                color: context.theme.appColors.primary,
                blurRadius: 18,
                spreadRadius: -14,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                AppIcons.iconly_regular_outline_arrow___right_circle,
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
              const SizedBox(width: 8),
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
