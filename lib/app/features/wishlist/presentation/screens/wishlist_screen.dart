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
    return Scaffold(
      appBar: CustomAppBar(title: 'wishlist'.tr()),
      body: RefreshIndicator(
        onRefresh: () async => context.read<WishlistBloc>().add(GetWishlist()),
        child: BlocBuilder<WishlistBloc, WishlistState>(
          builder: (context, state) {
            if (state.status is WishlistLoaded) {
              if ((state.status as WishlistLoaded).wishlistItems.isNotEmpty) {
                return ProductGrid(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  products: (state.status as WishlistLoaded)
                      .wishlistItems
                      .map((e) => e.product)
                      .toList(),
                );
              } else {
                return Center(child: Text('wishlist_is_empty'.tr()));
              }
            }
            if (state.status is WishlistError) {
              return ErrorText(
                errorMessage: (state.status as WishlistError).errorMessage,
                onPressed: () =>
                    context.read<WishlistBloc>().add(GetWishlist()),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
