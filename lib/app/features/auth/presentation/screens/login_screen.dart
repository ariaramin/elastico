import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/textfield/app_textfield.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/core/extention/ui_extention.dart';
import 'package:elastico/app/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      dismissOnCapturedTaps: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: BlocListener<LoginCubit, LoginState>(
            listenWhen: (previous, current) =>
                previous.status != current.status,
            listener: (context, state) async {
              if (state.status.isSuccess) {
                context.showToast(
                  title: 'ورود موفقیت آمیز بود',
                  description: 'شما با موفقیت وارد حساب کاربری خود شدید.',
                  type: ToastificationType.success,
                );
                await Future.delayed(
                  const Duration(seconds: 4),
                  () => context.go(AppRouterPaths.home),
                );
              } else if (state.status.isFailure) {
                context.showToast(
                  title: 'خطایی رخ داده است',
                  description:
                      state.errorMessage ?? 'مشکلی در ورود پیش آمده است.',
                  type: ToastificationType.error,
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  const SizedBox(height: 56),
                  Assets.images.appIcon.svg(
                    width: context.width / 3.8,
                    colorFilter: ColorFilter.mode(
                      context.theme.appColors.onBackground,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'وارد حساب کاربری خود شوید',
                    style: context.theme.appTextTheme.title2,
                  ),
                  const SizedBox(height: 24),
                  const _EmailTextField(),
                  const SizedBox(height: 20),
                  const _PasswordTextFeild(),
                  const SizedBox(height: 64),
                  const _LoginButton(),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'رمز عبور خود را فراموش کرده اید؟',
                      style: context.theme.appTextTheme.small,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => context.go(AppRouterPaths.register),
                    child: RichText(
                      text: TextSpan(
                        text: 'حساب کاربری ندارید؟ ',
                        style: context.theme.appTextTheme.tiny.copyWith(
                          color: AppPalette.light.light40,
                        ),
                        children: [
                          TextSpan(
                            text: 'ثبت نام',
                            style: context.theme.appTextTheme.tiny,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: AppButton(
            key: const Key('login_button'),
            text: 'ورود به حساب کاربری',
            isLoading: state.status.isInProgress,
            onPressed:
                state.isValid ? () => context.read<LoginCubit>().login() : null,
          ),
        );
      },
    );
  }
}

class _PasswordTextFeild extends StatelessWidget {
  const _PasswordTextFeild();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return AppTextField(
          key: const Key('password_text_field'),
          hint: 'رمز عبور',
          isPassword: true,
          prefixIcon: AppIcons.iconly_regular_outline_lock,
          onChanged: (value) =>
              context.read<LoginCubit>().passwordChanged(value),
        );
      },
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          key: const Key('email_text_field'),
          hint: 'ایمیل',
          keyboardType: TextInputType.emailAddress,
          prefixIcon: AppIcons.iconly_regular_bold_message,
          onChanged: (value) => context.read<LoginCubit>().emailChanged(value),
        );
      },
    );
  }
}
