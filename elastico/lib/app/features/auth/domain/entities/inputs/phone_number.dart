import 'package:formz/formz.dart';

enum PhoneNumberValidationError { invalid }

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure('');

  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  static final RegExp _phoneNumberRegExp = RegExp(
    r'(0|\+98)?([ ]|-|[()]){0,2}9[1|2|3|4]([ ]|-|[()]){0,2}(?:[0-9]([ ]|-|[()]){0,2}){8}',
  );

  @override
  PhoneNumberValidationError? validator(String value) =>
      _phoneNumberRegExp.hasMatch(value)
          ? null
          : PhoneNumberValidationError.invalid;
}
