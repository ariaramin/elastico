import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class SelectableBottomSheet extends StatelessWidget {
  final List<String> options;
  final String selectedOption;
  final Function(String) onOptionSelected;

  const SelectableBottomSheet({
    super.key,
    required this.options,
    required this.selectedOption,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: options.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(options[index]),
        titleTextStyle: context.theme.appTextTheme.regular3,
        trailing: selectedOption == options[index]
            ? Icon(
                AppIcons.iconly_regular_outline_chat,
                size: 18,
                color: AppPalette.green.green80,
              )
            : null,
        onTap: () {
          onOptionSelected(options[index]);
          Navigator.pop(context);
        },
      ),
    );
  }
}
