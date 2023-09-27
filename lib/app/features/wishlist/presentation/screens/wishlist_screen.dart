import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/product_grid.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
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
                  ? ProductGrid(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      products: wishlist.map((e) => e.product).toList(),
                    )
                  : Center(child: Text('wishlist_is_empty'.tr())),
              error: (errorMessage) => ErrorText(
                errorMessage: errorMessage,
                onPressed: () => bloc.getWishlist(),
              ),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}
