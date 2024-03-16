import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/empty_text.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/components/product/product_wrap.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WishlistBloc>();
    return Scaffold(
      appBar: CustomAppBar(title: 'wishlist'.tr()),
      body: RefreshIndicator(
        onRefresh: () async => bloc.getWishlist(),
        child: BlocBuilder<WishlistBloc, WishlistState>(
          builder: (context, state) {
            return state.status.maybeWhen(
              loaded: (wishlist) => wishlist.isNotEmpty
                  ? SizedBox.expand(
                      child: ProductWrap(
                        products: wishlist.map((e) => e.product).toList(),
                      ),
                    )
                  : EmptyText(
                      text: 'wishlist_is_empty'.tr(),
                      image: Assets.images.wishlist.svg(),
                    ),
              error: (errorMessage) => ErrorText(
                errorMessage: errorMessage,
                onPressed: () => bloc.getWishlist(),
              ),
              orElse: () => const Center(child: LoadingIndicator()),
            );
          },
        ),
      ),
    );
  }
}
