import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/config/route/app_routes_name.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/intro/presentation/bloc/network_bloc.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                    width: 162,
                    colorFilter: ColorFilter.mode(
                      context.theme.appColors.onBackground,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              BlocConsumer<NetworkBloc, NetworkState>(
                listener: (context, state) {
                  if (state is NetworkSuccess) {
                    Future.delayed(
                      const Duration(milliseconds: 2500),
                      () => Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutesName.main,
                        (route) => false,
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is NetworkFailure) {
                    return ErrorText(
                      errorMessage: 'connection_error_message'.tr(),
                      onPressed: () => context
                          .read<NetworkBloc>()
                          .add(CheckNetworkConnection()),
                    );
                  }
                  return SizedBox(
                    width: 56,
                    height: 56,
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballRotateChase,
                      colors: [context.theme.appColors.onBackground],
                    ),
                  );
                },
              ),
              const SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}
