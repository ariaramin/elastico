import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: Assets.images.profile.provider(),
                radius: 42,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: context.theme.appColors.primary,
                  ),
                  child: const Icon(
                    AppIcons.iconly_regular_outline_edit,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'آریا رامین',
          style: context.theme.appTextTheme.title3,
        ),
        const SizedBox(height: 8),
        Text(
          '090212121212',
          style: context.theme.appTextTheme.tiny.copyWith(
            color: AppPalette.light.light20,
          ),
        ),
      ],
    );
  }
}
