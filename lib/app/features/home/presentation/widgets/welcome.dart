import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: Assets.images.profile.provider(),
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
    );
  }
}
