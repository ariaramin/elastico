import 'package:elastico/app/config/locator/locator.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/features/auth/presentation/cubit/settings/settings_cubit.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/bottom_sheet/entity/option.dart';
import 'package:elastico/app/core/components/bottom_sheet/selectable_bottom_sheet.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/core/services/remote/auth_service.dart';
import 'package:elastico/app/features/auth/domain/entities/settings_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
  Option? _selectedOption;

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
        size: 24.w,
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
      // horizontalTitleGap: 0,
      onTap: () => _handleOnTap(context),
      trailing: _handleTrailing(context),
    );
  }

  Widget? _handleTrailing(BuildContext context) => switch (widget.item.type) {
        SettingsItemType.normal => Icon(
            AppIcons.iconly_regular_outline_arrow___left_2,
            size: 18.w,
            color: context.theme.appColors.onBackground,
          ),
        SettingsItemType.switchItem =>
          BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) => Switch(
              value: state.isDarkTheme,
              onChanged: (value) => context.read<SettingsCubit>().toggleTheme(),
            ),
          ),
        SettingsItemType.selectable => Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                _selectedOption!.title,
                style: context.theme.appTextTheme.small,
              ),
              6.wb,
              Icon(
                AppIcons.iconly_regular_outline_arrow___left_2,
                size: 18.w,
                color: context.theme.appColors.onBackground,
              ),
            ],
          ),
        SettingsItemType.logout => null,
      };

  void _handleOnTap(BuildContext context) => switch (widget.item.type) {
        SettingsItemType.normal => widget.onItemTap!(),
        SettingsItemType.switchItem =>
          context.read<SettingsCubit>().toggleTheme(),
        SettingsItemType.selectable => _showSelectableOptions(context),
        SettingsItemType.logout => _logout(context),
      };

  void _showSelectableOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      builder: (context) => BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) => SelectableBottomSheet(
          options: widget.item.options!,
          selectedOption: _selectedOption,
          onOptionSelected: (option) {
            setState(() => _selectedOption = option);
            context
                .read<SettingsCubit>()
                .changeLanguage((option.value as Locale).languageCode);
          },
        ),
      ),
    );
  }

  void _logout(BuildContext context) {
    locator.get<AuthService>().logout();
    context.go(AppRouterPaths.login);
  }
}
