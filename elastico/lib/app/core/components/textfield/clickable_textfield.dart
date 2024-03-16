import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClickableTextField extends StatelessWidget {
  final String hint;
  final String? text;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final Function()? onTap;

  const ClickableTextField({
    super.key,
    required this.hint,
    this.text,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: context.theme.appColors.textField,
        ),
        child: Center(
          child: FormField(
            builder: (field) {
              return InputDecorator(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(prefixIcon),
                  prefixIconColor: MaterialStateColor.resolveWith(
                    (states) => text != null
                        ? context.theme.appColors.onBackground
                        : AppPalette.light.light40,
                  ),
                  suffixIcon: Icon(
                    suffixIcon ?? Icons.arrow_drop_down_rounded,
                  ),
                  suffixIconColor: suffixIconColor ??
                      MaterialStateColor.resolveWith(
                        (states) => text != null
                            ? context.theme.appColors.onBackground
                            : AppPalette.light.light40,
                      ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text ?? hint,
                      style: text == null
                          ? context.theme.appTextTheme.regular3.copyWith(
                              color: context.theme.appColors.onBackground
                                  .withOpacity(.3),
                            )
                          : context.theme.appTextTheme.regular3.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
