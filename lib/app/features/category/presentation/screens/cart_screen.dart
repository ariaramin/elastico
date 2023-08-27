import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/title_bar.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_action_bar.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_grid.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_list.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_price_detail.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'cart'.tr(),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.iconly_regular_outline_search),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 18,
                ),
                sliver: context.responsive(
                  const CartItemList(),
                  md: const CartItemGrid(),
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.fromLTRB(18, 12, 18, 0),
                sliver: SliverToBoxAdapter(
                  child: Divider(),
                ),
              ),
              TitleBar(
                title: 'cart_summery'.tr(),
                hasTrailingText: false,
              ),
              const CartPriceDetail(),
              const SliverPadding(padding: EdgeInsets.only(bottom: 92))
            ],
          ),
          const Positioned(
            left: 18,
            right: 18,
            bottom: 18,
            child: CartActionBar(),
          )
        ],
      ),
    );
  }
}
