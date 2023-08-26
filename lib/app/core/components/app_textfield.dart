import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;
  final bool isClickable;

  const AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.isClickable = false,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode _focusNode;
  bool _hasFocus = false;
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
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
          controller: widget.controller,
          focusNode: _focusNode,
          keyboardType: widget.keyboardType,
          style: context.theme.appTextTheme.regular3.copyWith(
            fontWeight: FontWeight.w600,
          ),
          obscureText: _isPasswordVisible,
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
                  : widget.controller.text.isNotEmpty
                      ? context.theme.appColors.onBackground
                      : AppPalette.light.light40,
            ),
            suffixIcon: widget.isPassword
                ? GestureDetector(
                    onTap: () => setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    }),
                    child: Icon(
                      !_isPasswordVisible
                          ? Icons.password
                          : Icons.remove_red_eye_outlined,
                    ),
                  )
                : Icon(widget.suffixIcon),
            suffixIconColor: MaterialStateColor.resolveWith(
              (states) => states.contains(MaterialState.focused)
                  ? context.theme.appColors.onBackground
                  : widget.controller.text.isNotEmpty
                      ? context.theme.appColors.onBackground
                      : AppPalette.light.light40,
            ),
          ),
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }
}
