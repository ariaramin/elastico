import 'package:cached_network_image/cached_network_image.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(state.user.avatar!),
              radius: 48.r,
            ),
            8.hb,
            Text(
              state.user.name!,
              style: context.theme.appTextTheme.title3,
            ),
            8.hb,
            Text(
              state.user.email!,
              style: context.theme.appTextTheme.tiny.copyWith(
                color: AppPalette.light.light20,
              ),
            ),
          ],
        );
      },
    );
  }
}
