import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/auth/domain/entities/settings_item.dart';
import 'package:elastico/app/features/auth/presentation/widgets/selectable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatefulWidget {
  final SettingsItem item;
  final Function()? onItemTap;

  const SettingsTile({
    super.key,
    required this.item,
    this.onItemTap,
  });

  @override
  State<SettingsTile> createState() => _SettingsTileState();
}

class _SettingsTileState extends State<SettingsTile> {
  bool _isOn = false;
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.item.options?.first;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: Icon(
        widget.item.icon,
        size: 24,
        color: widget.item.type == SettingsItemType.logout
            ? AppPalette.red.red80
            : context.theme.appColors.onBackground,
      ),
      title: Text(widget.item.title),
      titleTextStyle: context.theme.appTextTheme.regular3.copyWith(
        color: widget.item.type == SettingsItemType.logout
            ? AppPalette.red.red80
            : context.theme.appTextTheme.regular3.color,
      ),
      horizontalTitleGap: 0,
      onTap: () => switch (widget.item.type) {
        SettingsItemType.normal => widget.onItemTap,
        SettingsItemType.switchItem => setState(() => _isOn = !_isOn),
        SettingsItemType.selectable => showModalBottomSheet(
            context: context,
            useRootNavigator: true,
            builder: (context) => SelectableBottomSheet(
              options: widget.item.options!,
              selectedOption: _selectedOption!,
              onOptionSelected: (option) =>
                  setState(() => _selectedOption = option),
            ),
          ),
        SettingsItemType.logout => widget.onItemTap,
      },
      trailing: switch (widget.item.type) {
        SettingsItemType.normal => Icon(
            AppIcons.iconly_regular_outline_arrow___left_2,
            size: 18,
            color: context.theme.appColors.onBackground,
          ),
        SettingsItemType.switchItem => Switch(
            value: _isOn,
            onChanged: (value) => setState(() => _isOn = !_isOn),
          ),
        SettingsItemType.selectable => Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                _selectedOption!,
                style: context.theme.appTextTheme.small,
              ),
              const SizedBox(width: 6),
              Icon(
                AppIcons.iconly_regular_outline_arrow___left_2,
                size: 18,
                color: context.theme.appColors.onBackground,
              ),
            ],
          ),
        SettingsItemType.logout => null,
      },
    );
  }
}
