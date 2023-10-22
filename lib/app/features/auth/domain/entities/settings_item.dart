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
  }) = _SettingsItem;
}

List<SettingsItem> settings = [
  const SettingsItem(
    title: 'ویرایش پروفایل',
    icon: AppIcons.iconly_regular_outline_profile,
  ),
  const SettingsItem(
    title: 'آدرس ها',
    icon: AppIcons.iconly_regular_outline_location,
  ),
  const SettingsItem(
    title: 'اعلان ها',
    icon: AppIcons.iconly_regular_outline_notification,
  ),
  SettingsItem(
    title: 'زبان',
    icon: AppIcons.iconly_regular_outline_document,
    type: SettingsItemType.selectable,
    options: [
      Option(
        title: 'فارسی',
        value: const Locale('fa', 'IR'),
      ),
      Option(
        title: 'انگلیسی',
        value: const Locale('en', 'US'),
      ),
    ],
  ),
  const SettingsItem(
    title: 'دارک مود',
    icon: AppIcons.iconly_regular_outline_show,
    type: SettingsItemType.switchItem,
  ),
  const SettingsItem(
    title: 'دعوت از دوستان',
    icon: AppIcons.iconly_regular_outline_3_user,
  ),
  const SettingsItem(
    title: 'خروج از حساب کاربری',
    icon: AppIcons.iconly_regular_outline_logout,
    type: SettingsItemType.logout,
  ),
];
