import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedItem;
  final Function(int)? onTap;

  const BottomNavigation({
    super.key,
    required this.selectedItem,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedItem,
      type: BottomNavigationBarType.fixed,
      items: [
        _getBottomNavigationItem(
          AppIcons.iconly_regular_outline_home,
          AppIcons.iconly_regular_bold_home,
          'home'.tr(),
        ),
        _getBottomNavigationItem(
          AppIcons.iconly_regular_outline_category,
          AppIcons.iconly_regular_bold_category,
          'categories'.tr(),
        ),
        _getBottomNavigationItem(
          AppIcons.iconly_regular_outline_bag,
          AppIcons.bag,
          'cart'.tr(),
        ),
        _getBottomNavigationItem(
          AppIcons.iconly_regular_outline_profile,
          AppIcons.iconly_regular_bold_profile,
          'profile'.tr(),
        ),
      ],
    );
  }

  BottomNavigationBarItem _getBottomNavigationItem(
    IconData? icon,
    IconData? activeIcon,
    String title,
  ) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Icon(
          icon,
          size: 26,
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Icon(
          activeIcon,
          size: 26,
        ),
      ),
      label: title,
    );
  }
}
