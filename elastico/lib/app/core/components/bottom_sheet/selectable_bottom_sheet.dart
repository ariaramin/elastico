import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'entity/option.dart';

class SelectableBottomSheet extends StatelessWidget {
  final List<Option> options;
  final Option? selectedOption;
  final Function(Option) onOptionSelected;

  const SelectableBottomSheet({
    super.key,
    required this.options,
    this.selectedOption,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: options.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(options[index].title),
        titleTextStyle: context.theme.appTextTheme.regular3,
        trailing: selectedOption == options[index]
            ? Icon(
                AppIcons.tick_square,
                size: 20.w,
                color: AppPalette.green.green80,
              )
            : null,
        onTap: () {
          onOptionSelected(options[index]);
          context.pop();
        },
      ),
    );
  }
}
