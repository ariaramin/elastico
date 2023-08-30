import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        IconButton(
          icon: const Icon(AppIcons.iconly_regular_outline_heart),
          onPressed: () {},
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
