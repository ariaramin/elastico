import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/textfield/app_textfield.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/core/extention/ui_extention.dart';
import 'package:elastico/app/features/auth/presentation/cubit/register/register_cubit.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      dismissOnCapturedTaps: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: BlocListener<RegisterCubit, RegisterState>(
            listenWhen: (previous, current) =>
                previous.status != current.status,
            listener: (context, state) async {
              if (state.status.isSuccess) {
                context.showToast(
                  title: 'ثبت نام موفقیت آمیز بود',
                  description: 'حساب کاربری شما با موفقیت ساخته شد.',
                  type: ToastificationType.success,
                );
                await Future.delayed(
                  const Duration(seconds: 2),
                  () => context.go(AppRouterPaths.home),
                );
              } else if (state.status.isFailure) {
                context.showToast(
                  title: 'خطایی رخ داده است',
                  description:
                      state.errorMessage ?? 'مشکلی در ثبت نام پیش آمده است.',
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
                    'ساخت حساب کاربری',
                    style: context.theme.appTextTheme.title2,
                  ),
                  const SizedBox(height: 24),
                  const _FullNameTextField(),
                  const SizedBox(height: 20),
                  const _EmailTextField(),
                  const SizedBox(height: 20),
                  const _PasswordTextField(),
                  const SizedBox(height: 64),
                  const _RegisterButton(),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => context.go(AppRouterPaths.login),
                    child: RichText(
                      text: TextSpan(
                        text: 'حساب کاربری دارید؟ ',
                        style: context.theme.appTextTheme.tiny.copyWith(
                          color: AppPalette.light.light40,
                        ),
                        children: [
                          TextSpan(
                            text: 'وارد شوید',
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

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: AppButton(
            key: const Key('register_button'),
            text: 'ثبت نام',
            isLoading: state.status.isInProgress,
            onPressed: state.isValid
                ? () => context.read<RegisterCubit>().register()
                : null,
          ),
        );
      },
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return AppTextField(
          key: const Key('password_text_field'),
          hint: 'رمز عبور',
          isPassword: true,
          prefixIcon: AppIcons.iconly_regular_outline_lock,
          onChanged: (value) =>
              context.read<RegisterCubit>().passwordChanged(value),
        );
      },
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          key: const Key('email_text_field'),
          hint: 'ایمیل',
          keyboardType: TextInputType.emailAddress,
          prefixIcon: AppIcons.iconly_regular_bold_message,
          onChanged: (value) =>
              context.read<RegisterCubit>().emailChanged(value),
        );
      },
    );
  }
}

class _FullNameTextField extends StatelessWidget {
  const _FullNameTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.fullName != current.fullName,
      builder: (context, state) {
        return AppTextField(
          key: const Key('fullname_text_field'),
          hint: 'نام و نام خانوادگی',
          prefixIcon: AppIcons.iconly_regular_bold_profile,
          onChanged: (value) =>
              context.read<RegisterCubit>().fullNameChanged(value),
        );
      },
    );
  }
}
