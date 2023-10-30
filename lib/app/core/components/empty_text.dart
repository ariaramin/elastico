import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

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
            sm: 224,
          ),
          child: image,
        ),
        const SizedBox(height: 32),
        Text(
          text,
          style: context.theme.appTextTheme.regular2,
        ),
      ],
    );
  }
}
