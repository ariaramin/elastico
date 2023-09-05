import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/components/clickable_textfield.dart';
import 'package:elastico/app/core/config/route/app_routes_name.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

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
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 22,
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'greeting'.tr(gender: 'morning'),
                    style: context.theme.appTextTheme.tiny.copyWith(
                      color:
                          context.theme.appColors.onBackground.withOpacity(.4),
                    ),
                  ),
                  Text(
                    ' 👋',
                    style: context.theme.appTextTheme.tiny,
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Text(
                'آریا رامین',
                style: context.theme.appTextTheme.regular2,
              ),
            ],
          ),
        ],
      ),
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
          onPressed: () => Navigator.pushNamed(context, AppRoutesName.wishlist),
        ),
      ],
      bottom: AppBar(
        toolbarHeight: kToolbarHeight + 18,
        backgroundColor: context.theme.appColors.background,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: ClickableTextField(
          hint: 'search'.tr(),
          prefixIcon: AppIcons.iconly_regular_outline_search,
          suffixIcon: AppIcons.iconly_regular_outline_filter,
          suffixIconColor: context.theme.appColors.onBackground,
        ),
      ),
    );
  }
}
