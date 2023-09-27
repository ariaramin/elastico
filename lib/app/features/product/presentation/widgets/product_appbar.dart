import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductAppBar extends StatelessWidget {
  final Product product;

  const ProductAppBar({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WishlistBloc>();
    return SliverAppBar(
      backgroundColor: const Color(0xffEAEEEF),
      elevation: 0,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(
        color: AppPalette.dark.dark75,
      ),
      actionsIconTheme: IconThemeData(
        color: AppPalette.dark.dark75,
      ),
      actions: [
        BlocBuilder<WishlistBloc, WishlistState>(
          builder: (context, state) {
            return IconButton(
              icon: Icon(
                state.wishlist.any((element) => element.id == product.id)
                    ? AppIcons.iconly_regular_bold_heart
                    : AppIcons.iconly_regular_outline_heart,
                color: state.wishlist.any((element) => element.id == product.id)
                    ? AppPalette.red.red80
                    : null,
              ),
              onPressed: () => bloc.toggleWishlist(product),
            );
          },
        ),
        IconButton(
          icon: const Icon(AppIcons.iconly_regular_outline_notification),
          onPressed: () {},
        ),
      ],
      leading: Navigator.canPop(context)
          ? IconButton(
              icon: const Icon(AppIcons.iconly_regular_outline_arrow___right),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
    );
  }
}
