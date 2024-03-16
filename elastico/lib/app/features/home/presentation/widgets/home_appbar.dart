import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/core/components/textfield/clickable_textfield.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/home/presentation/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: false,
      backgroundColor: context.theme.appColors.background,
      scrolledUnderElevation: 2,
      automaticallyImplyLeading: false,
      title: const Welcome(),
      actionsIconTheme: IconThemeData(
        color: context.theme.appColors.onBackground,
      ),
      actions: [
        IconButton(
          icon: const Icon(AppIcons.iconly_regular_outline_notification),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(AppIcons.iconly_regular_outline_heart),
          onPressed: () => context.push(AppRouterPaths.wishlist),
        ),
      ],
      bottom: AppBar(
        toolbarHeight: kToolbarHeight + 18.h,
        backgroundColor: context.theme.appColors.background,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: ClickableTextField(
          hint: 'search'.tr(),
          prefixIcon: AppIcons.iconly_regular_outline_search,
          suffixIcon: AppIcons.iconly_regular_outline_filter,
          suffixIconColor: context.theme.appColors.onBackground,
          onTap: () => context.push(AppRouterPaths.search),
        ),
      ),
    );
  }
}
