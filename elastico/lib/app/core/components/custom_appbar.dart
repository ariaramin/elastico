import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.appColors.background,
      elevation: 0,
      scrolledUnderElevation: 2,
      title: Text(title),
      titleTextStyle: context.theme.appTextTheme.regular2,
      titleSpacing: Navigator.canPop(context) ? 0 : null,
      iconTheme: IconThemeData(
        color: context.theme.appColors.onBackground,
      ),
      actionsIconTheme: IconThemeData(
        color: context.theme.appColors.onBackground,
      ),
      actions: actions,
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
