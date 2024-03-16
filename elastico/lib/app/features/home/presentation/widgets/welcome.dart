import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(AppRouterPaths.profile),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return Row(
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(state.user.avatar!),
                radius: 22.r,
              ),
              12.wb,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'greeting'.tr(gender: _getTimeOfDayStatus()),
                        style: context.theme.appTextTheme.tiny.copyWith(
                          color: context.theme.appColors.onBackground
                              .withOpacity(.4),
                        ),
                      ),
                      Text(
                        ' 👋',
                        style: context.theme.appTextTheme.tiny,
                      ),
                    ],
                  ),
                  2.hb,
                  Text(
                    state.user.name!,
                    style: context.theme.appTextTheme.regular2,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  String _getTimeOfDayStatus() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour >= 6 && hour < 12) {
      return 'morning';
    } else if (hour >= 12 && hour < 16) {
      return 'afternoon';
    } else if (hour >= 16 && hour < 20) {
      return 'evening';
    } else {
      return 'night';
    }
  }
}
