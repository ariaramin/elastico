import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/textfield/app_textfield.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart';
import 'package:elastico/app/features/auth/presentation/cubit/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../widgets/select_image_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      dismissOnCapturedTaps: true,
      child: Scaffold(
        appBar: CustomAppBar(title: 'edit_profile'.tr()),
        body: SafeArea(
          child: Padding(
            padding: 18.w.horizontal,
            child: BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                return Column(
                  children: [
                    SelectImageButton(avatarUrl: state.user.avatar!),
                    36.hb,
                    _FullNameTextField(state.user.name),
                    20.hb,
                    _EmailTextField(state.user.email),
                    // SizedBox(height: 20),
                    // _PhoneNumberTextField(),
                    64.hb,
                    const _EditButton(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: AppButton(
            key: const Key('edit_button'),
            text: 'edit'.tr(),
            isLoading: state.status.isInProgress,
            onPressed: state.isValid
                ? () => context.read<EditProfileCubit>().edit()
                : null,
          ),
        );
      },
    );
  }
}

// class _PhoneNumberTextField extends StatelessWidget {
//   const _PhoneNumberTextField();

//   final String? initialValue;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<EditProfileCubit, EditProfileState>(
//       buildWhen: (previous, current) =>
//           previous.phoneNumber != current.phoneNumber,
//       builder: (context, state) {
//         return AppTextField(
//           key: const Key('phone_nubmer_text_field'),
//           hint: 'phone_number'.tr(),
//           initialValue: initialValue,
//           prefixIcon: AppIcons.iconly_regular_outline_lock,
//           onChanged: (value) =>
//               context.read<EditProfileCubit>().phoneNumberChanged(value),
//         );
//       },
//     );
//   }
// }

class _EmailTextField extends StatelessWidget {
  const _EmailTextField(this.initialValue);

  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          key: const Key('email_text_field'),
          hint: 'email'.tr(),
          initialValue: initialValue,
          keyboardType: TextInputType.emailAddress,
          prefixIcon: AppIcons.iconly_regular_bold_message,
          onChanged: (value) =>
              context.read<EditProfileCubit>().emailChanged(value),
        );
      },
    );
  }
}

class _FullNameTextField extends StatelessWidget {
  const _FullNameTextField(this.initialValue);

  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
      buildWhen: (previous, current) => previous.fullName != current.fullName,
      builder: (context, state) {
        return AppTextField(
          key: const Key('fullname_text_field'),
          hint: 'full_name'.tr(),
          initialValue: initialValue,
          prefixIcon: AppIcons.iconly_regular_bold_profile,
          onChanged: (value) =>
              context.read<EditProfileCubit>().fullNameChanged(value),
        );
      },
    );
  }
}
