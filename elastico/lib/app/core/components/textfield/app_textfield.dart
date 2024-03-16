import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  final String? initialValue;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final bool isPassword;
  final bool autofocus;
  final Function()? onSuffixIconTap;
  final Function(String)? onChanged;

  const AppTextField({
    super.key,
    this.controller,
    required this.hint,
    this.initialValue,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.isPassword = false,
    this.autofocus = false,
    this.onSuffixIconTap,
    this.onChanged,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _hasFocus = false;
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _controller.text = widget.initialValue ?? '';
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 56.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: _hasFocus
            ? Border.all(
                width: 1,
                color: context.theme.appColors.onBackground,
              )
            : null,
        color: context.theme.appColors.textField,
      ),
      child: Center(
        child: TextFormField(
          controller: _controller,
          focusNode: _focusNode,
          autofocus: widget.autofocus,
          keyboardType: widget.keyboardType,
          style: context.theme.appTextTheme.regular3.copyWith(
            fontWeight: FontWeight.w600,
          ),
          obscureText: widget.isPassword ? !_isPasswordVisible : false,
          obscuringCharacter: '●',
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hint,
            hintStyle: context.theme.appTextTheme.regular3.copyWith(
              color: AppPalette.light.light40,
            ),
            prefixIcon: Icon(widget.prefixIcon),
            prefixIconColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.focused)
                  ? context.theme.appColors.onBackground
                  : _controller.text.isNotEmpty
                      ? context.theme.appColors.onBackground
                      : AppPalette.light.light40,
            ),
            suffixIcon: widget.isPassword
                ? GestureDetector(
                    onTap: () => setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    }),
                    child: Icon(
                      _isPasswordVisible
                          ? AppIcons.iconly_regular_bold_hide
                          : AppIcons.iconly_regular_bold_show,
                    ),
                  )
                : GestureDetector(
                    onTap: widget.onSuffixIconTap,
                    child: Icon(widget.suffixIcon),
                  ),
            suffixIconColor: widget.suffixIconColor ??
                MaterialStateColor.resolveWith(
                  (states) => states.contains(MaterialState.focused)
                      ? context.theme.appColors.onBackground
                      : _controller.text.isNotEmpty
                          ? context.theme.appColors.onBackground
                          : AppPalette.light.light40,
                ),
          ),
          textAlignVertical: TextAlignVertical.center,
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
