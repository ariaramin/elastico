import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/empty_text.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/components/section_title.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_action_bar.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_grid.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_item_list.dart';
import 'package:elastico/app/features/cart/presentation/widgets/cart_price_detail.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CartBloc>();
    return Scaffold(
      appBar: CustomAppBar(title: 'cart'.tr()),
      body: RefreshIndicator(
        onRefresh: () async => bloc.getCart(),
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (cart) => cart.isNotEmpty
                ? Stack(
                    children: [
                      CustomScrollView(
                        slivers: [
                          SliverPadding(
                            padding: 8.h.vertical + 18.w.horizontal,
                            sliver: context.responsive(
                              CartItemList(cartItems: cart),
                              sm: CartItemGrid(cartItems: cart),
                            ),
                          ),
                          SliverPadding(
                            padding: 18.w.horizontal + 12.h.top,
                            sliver: const SliverToBoxAdapter(
                              child: Divider(),
                            ),
                          ),
                          SectionTitle(
                            title: 'cart_summery'.tr(),
                            hasTrailingText: false,
                          ),
                          CartPriceDetail(cartItems: cart),
                          SliverPadding(padding: 92.h.bottom)
                        ],
                      ),
                      Positioned(
                        left: 18,
                        right: 18,
                        bottom: 18,
                        child: CartActionBar(cartItems: cart),
                      )
                    ],
                  )
                : EmptyText(
                    text: 'cart_is_empty'.tr(),
                    image: Assets.images.emptyCart.svg(),
                  ),
            error: (message) => ErrorText(
              errorMessage: message,
              onPressed: () => bloc.getCart(),
            ),
            orElse: () => const Center(child: LoadingIndicator()),
          ),
        ),
      ),
    );
  }
}
