import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/auth/domain/usecases/login.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/inputs/email.dart';
import '../../../domain/entities/inputs/password.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final Login _login;

  LoginCubit(this._login) : super(const LoginState());

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      isValid: Formz.validate([email, state.password]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      isValid: Formz.validate([state.email, password]),
    ));
  }

  void login() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final params = LoginParams(
      email: state.email.value,
      password: state.password.value,
    );
    final result = await _login.call(params);
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
