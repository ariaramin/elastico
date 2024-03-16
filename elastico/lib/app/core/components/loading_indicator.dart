import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator extends StatelessWidget {
  final double? size;

  const LoadingIndicator({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      color: context.theme.appColors.onBackground,
      size: size ?? 28.w,
    );
  }
}
