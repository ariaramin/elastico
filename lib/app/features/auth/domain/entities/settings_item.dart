import 'package:elastico/app/core/components/app_icons.dart';
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
abstract class SettingsItem with _$SettingsItem {
  const factory SettingsItem({
    required String title,
    required IconData icon,
    @Default(SettingsItemType.normal) SettingsItemType type,
    List<String>? options,
  }) = _SettingsItem;
}

const List<SettingsItem> settings = [
  SettingsItem(
    title: 'ویرایش پروفایل',
    icon: AppIcons.iconly_regular_outline_profile,
  ),
  SettingsItem(
    title: 'آدرس ها',
    icon: AppIcons.iconly_regular_outline_location,
  ),
  SettingsItem(
    title: 'اعلان ها',
    icon: AppIcons.iconly_regular_outline_notification,
  ),
  SettingsItem(
    title: 'زبان',
    icon: AppIcons.iconly_regular_outline_star,
    type: SettingsItemType.selectable,
    options: ['فارسی', 'انگلیسی'],
  ),
  SettingsItem(
    title: 'دارک مود',
    icon: AppIcons.iconly_regular_outline_show,
    type: SettingsItemType.switchItem,
  ),
  SettingsItem(
    title: 'دعوت از دوستان',
    icon: AppIcons.iconly_regular_outline_profile,
  ),
  SettingsItem(
    title: 'خروج از حساب کاربری',
    icon: AppIcons.iconly_regular_outline_logout,
    type: SettingsItemType.logout,
  ),
];
