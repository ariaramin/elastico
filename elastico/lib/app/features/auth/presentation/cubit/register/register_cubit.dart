import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/auth/domain/usecases/register.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/inputs/email.dart';
import '../../../domain/entities/inputs/fullname.dart';
import '../../../domain/entities/inputs/password.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final Register _register;

  RegisterCubit(this._register) : super(const RegisterState());

  void fullNameChanged(String value) {
    final fullName = FullName.dirty(value);
    emit(state.copyWith(
      fullName: fullName,
      isValid: Formz.validate([fullName, state.email, state.password]),
    ));
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      isValid: Formz.validate([state.fullName, email, state.password]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      isValid: Formz.validate([state.fullName, state.email, password]),
    ));
  }

  void register() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final params = RegisterParams(
      fullName: state.fullName.value,
      email: state.email.value,
      password: state.password.value,
    );
    final result = await _register.call(params);
    result.fold(
      (failure) => emit(
        state.copyWith(
          errorMessage: failure.message,
          status: FormzSubmissionStatus.failure,
        ),
      ),
      (_) => emit(state.copyWith(status: FormzSubmissionStatus.success)),
    );
  }
}
