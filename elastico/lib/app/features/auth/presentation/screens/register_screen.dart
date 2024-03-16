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
import 'package:elastico/app/features/auth/presentation/cubit/register/register_cubit.dart';
import 'package:elastico/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  title: 'register_successfully'.tr(),
                  description: 'account_created_successfully'.tr(),
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
                      'something_went_wrong_with_register'.tr(),
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
                      sm: 138.w,
                    ),
                    colorFilter: ColorFilter.mode(
                      context.theme.appColors.onBackground,
                      BlendMode.srcIn,
                    ),
                  ),
                  24.hb,
                  Text(
                    'create_account'.tr(),
                    style: context.theme.appTextTheme.title2,
                  ),
                  24.hb,
                  const _FullNameTextField(),
                  20.hb,
                  const _EmailTextField(),
                  20.hb,
                  const _PasswordTextField(),
                  64.hb,
                  const _RegisterButton(),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => context.go(AppRouterPaths.login),
                    child: RichText(
                      text: TextSpan(
                        text: 'do_you_have_account'.tr(),
                        style: context.theme.appTextTheme.tiny.copyWith(
                          color: AppPalette.light.light40,
                        ),
                        children: [
                          TextSpan(
                            text: 'login'.tr(),
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
            text: 'register'.tr(),
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
          hint: 'password'.tr(),
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
          hint: 'email'.tr(),
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
          hint: 'full_name'.tr(),
          prefixIcon: AppIcons.iconly_regular_bold_profile,
          onChanged: (value) =>
              context.read<RegisterCubit>().fullNameChanged(value),
        );
      },
    );
  }
}
