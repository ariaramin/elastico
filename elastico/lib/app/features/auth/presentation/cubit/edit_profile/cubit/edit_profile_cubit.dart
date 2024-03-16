import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/auth/domain/entities/inputs/email.dart';
import 'package:elastico/app/features/auth/domain/entities/inputs/fullname.dart';
import 'package:elastico/app/features/auth/domain/entities/inputs/phone_number.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(const EditProfileState());

  void fullNameChanged(String value) {
    final fullName = FullName.dirty(value);
    emit(state.copyWith(
      fullName: fullName,
      isValid: Formz.validate([fullName, state.email, state.phoneNumber]),
    ));
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      isValid: Formz.validate([state.fullName, email, state.phoneNumber]),
    ));
  }

  void phoneNumberChanged(String value) {
    final phoneNumber = PhoneNumber.dirty(value);
    emit(state.copyWith(
      phoneNumber: phoneNumber,
      isValid: Formz.validate([state.fullName, state.email, phoneNumber]),
    ));
  }

  void edit() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
  }
}
