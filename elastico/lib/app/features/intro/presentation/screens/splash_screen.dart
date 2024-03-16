import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/intro/presentation/bloc/network_bloc.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                context.isDark
                    ? AppPalette.dark.dark50
                    : AppPalette.light.light60,
                context.isDark
                    ? AppPalette.dark.dark75
                    : AppPalette.light.light100,
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Assets.images.appIcon.svg(
                    width: 164.w,
                    colorFilter: ColorFilter.mode(
                      context.theme.appColors.onBackground,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              BlocConsumer<NetworkBloc, NetworkState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: () => Future.delayed(
                      const Duration(milliseconds: 2500),
                      () => context.go(AppRouterPaths.home),
                    ),
                  );
                },
                builder: (context, state) => state.maybeWhen(
                  failure: () => ErrorText(
                    errorMessage: 'connection_error_message'.tr(),
                    onPressed: () =>
                        context.read<NetworkBloc>().checkNetworkConnection(),
                  ),
                  orElse: () => SizedBox(
                    width: 56.w,
                    height: 56.w,
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballRotateChase,
                      colors: [context.theme.appColors.onBackground],
                    ),
                  ),
                ),
              ),
              56.hb,
            ],
          ),
        ),
      ),
    );
  }
}
