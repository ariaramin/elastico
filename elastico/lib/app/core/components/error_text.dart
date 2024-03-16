import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  final String errorMessage;
  final Function()? onPressed;

  const ErrorText({
    super.key,
    required this.errorMessage,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: context.theme.appTextTheme.regular3,
            textAlign: TextAlign.center,
          ),
          12.hb,
          AppButton(
            text: 'try_again'.tr(),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
