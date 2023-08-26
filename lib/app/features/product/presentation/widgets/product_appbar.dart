import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffEAEEEF),
      elevation: 0,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(
        color: context.theme.appColors.onBackground,
      ),
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
