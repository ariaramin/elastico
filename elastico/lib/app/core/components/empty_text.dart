import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyText extends StatelessWidget {
  final String text;
  final Widget image;

  const EmptyText({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: context.responsive<double>(
            context.width / 2.2,
            sm: 224.h,
          ),
          child: image,
        ),
        32.hb,
        Text(
          text,
          style: context.theme.appTextTheme.regular2,
        ),
      ],
    );
  }
}
