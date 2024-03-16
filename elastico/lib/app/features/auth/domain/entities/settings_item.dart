import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/bottom_sheet/entity/option.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_item.freezed.dart';

enum SettingsItemType {
  normal,
  switchItem,
  selectable,
  logout,
}

@freezed
class SettingsItem with _$SettingsItem {
  const factory SettingsItem({
    required String title,
    required IconData icon,
    @Default(SettingsItemType.normal) SettingsItemType type,
    List<Option>? options,
    String? destination,
  }) = _SettingsItem;
}

List<SettingsItem> settings = [
  SettingsItem(
    title: 'edit_profile'.tr(),
    icon: AppIcons.iconly_regular_outline_profile,
    destination: AppRouterPaths.editProfile,
  ),
  SettingsItem(
    title: 'addressess'.tr(),
    icon: AppIcons.iconly_regular_outline_location,
  ),
  SettingsItem(
    title: 'notifications'.tr(),
    icon: AppIcons.iconly_regular_outline_notification,
  ),
  SettingsItem(
    title: 'language'.tr(),
    icon: AppIcons.iconly_regular_outline_document,
    type: SettingsItemType.selectable,
    options: [
      Option(
        title: 'persian'.tr(),
        value: const Locale('fa', 'IR'),
      ),
      // Option(
      //   title: 'english'.tr(),
      //   value: const Locale('en', 'US'),
      // ),
    ],
  ),
  SettingsItem(
    title: 'dark_mode'.tr(),
    icon: AppIcons.iconly_regular_outline_show,
    type: SettingsItemType.switchItem,
  ),
  SettingsItem(
    title: 'invite_friends'.tr(),
    icon: AppIcons.iconly_regular_outline_3_user,
  ),
  SettingsItem(
    title: 'logout_from_account'.tr(),
    icon: AppIcons.iconly_regular_outline_logout,
    type: SettingsItemType.logout,
  ),
];
