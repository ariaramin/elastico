import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/components/shadow_container.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_price.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_variants.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      height: 142,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: AspectRatio(
                aspectRatio: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/99e66f47bc914dd79cc13eac6a478213_9366/Real_Madrid_23-24_Third_Jersey_Kids_Black_IN9844_01_laydown.jpg',
                  ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'لباس پلیری تمرینی رئال مادرید2023-پیراهن تک',
                                style:
                                    context.theme.appTextTheme.small.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                AppIcons.iconly_regular_outline_delete,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                        const CartItemVariants(),
                      ],
                    ),
                  ),
                ),
                const CartItemPrice(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
