part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default(Email.pure()) Email email,
    @Default(FullName.pure()) FullName fullName,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _EditProfileState;
}
