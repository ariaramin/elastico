import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                AppPalette.dark.dark50,
                AppPalette.dark.dark75,
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: SvgPicture.asset(
                    'assets/images/app_icon.svg',
                    colorFilter: ColorFilter.mode(
                      AppPalette.light.light100,
                      BlendMode.srcIn,
                    ),
                    width: 158,
                  ),
                ),
              ),
              SizedBox(
                width: 56,
                height: 56,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballRotateChase,
                  colors: [AppPalette.light.light100],
                ),
              ),
              const SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}
