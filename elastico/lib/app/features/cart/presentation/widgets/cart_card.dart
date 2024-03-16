import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/cached_image.dart';
import 'package:elastico/app/core/components/shadow_container.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_price.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_variants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CartCard extends StatelessWidget {
  final CartItem cartItem;

  const CartCard({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        AppRouterPaths.product.replaceFirst(':productId', cartItem.product.id),
      ),
      child: ShadowContainer(
        height: 142.h,
        child: Row(
          children: [
            Padding(
              padding: 8.w.all,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: CachedImage(imageUrl: cartItem.product.thumbnail),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: 10.w.horizontal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  cartItem.product.name,
                                  style: context.theme.appTextTheme.small,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    context.read<CartBloc>().removeFromCart(
                                          cartItem.id,
                                          removeForever: true,
                                        ),
                                child: Icon(
                                  AppIcons.iconly_regular_outline_delete,
                                  size: 20.w,
                                ),
                              )
                            ],
                          ),
                          cartItem.variant != null
                              ? CartItemVariants(variant: cartItem.variant!)
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                  CartItemPrice(cartItem: cartItem),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
