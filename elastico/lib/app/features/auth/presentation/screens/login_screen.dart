import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/config/route/app_router_paths.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/textfield/app_textfield.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/core/extention/ui_extention.dart';
import 'package:elastico/app/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  title: 'login_successfully'.tr(),
                  description: 'you_are_logged_in_successfully'.tr(),
                  type: ToastificationType.success,
                );
                await Future.delayed(
                  const Duration(seconds: 4),
                  () => context.go(AppRouterPaths.home),
                );
              } else if (state.status.isFailure) {
                context.showToast(
                  title: 'something_went_wrong'.tr(),
                  description: state.errorMessage ??
                      'something_went_wrong_with_login'.tr(),
                  type: ToastificationType.error,
                );
              }
            },
            child: Padding(
              padding: 18.w.horizontal,
              child: Column(
                children: [
                  56.hb,
                  Assets.images.appIcon.svg(
                    width: context.responsive(
                      context.width / 3.8,
                      sm: 138.h,
                    ),
                    colorFilter: ColorFilter.mode(
                      context.theme.appColors.onBackground,
                      BlendMode.srcIn,
                    ),
                  ),
                  24.hb,
                  Text(
                    'login_to_account'.tr(),
                    style: context.theme.appTextTheme.title2,
                  ),
                  24.hb,
                  const _EmailTextField(),
                  20.hb,
                  const _PasswordTextFeild(),
                  64.hb,
                  const _LoginButton(),
                  24.hb,
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'forgot_your_password'.tr(),
                      style: context.theme.appTextTheme.small,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => context.go(AppRouterPaths.register),
                    child: RichText(
                      text: TextSpan(
                        text: 'dont_have_account'.tr(),
                        style: context.theme.appTextTheme.tiny.copyWith(
                          color: AppPalette.light.light40,
                        ),
                        children: [
                          TextSpan(
                            text: 'register'.tr(),
                            style: context.theme.appTextTheme.tiny,
                          ),
                        ],
                      ),
                    ),
                  ),
                  32.hb,
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
            text: 'login'.tr(),
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
          hint: 'password'.tr(),
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
          hint: 'email'.tr(),
          keyboardType: TextInputType.emailAddress,
          prefixIcon: AppIcons.iconly_regular_bold_message,
          onChanged: (value) => context.read<LoginCubit>().emailChanged(value),
        );
      },
    );
  }
}
