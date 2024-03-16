class ApiException implements Exception {
  final int? code;
  final String message;

  const ApiException({this.code, this.message = 'خطایی رخ داده است.'});

  factory ApiException.authException(String code) {
    switch (code) {
      case 'validation_required':
        return const ApiException(
          code: 0,
          message: 'مقدار مورد نیاز از دست رفته است.',
        );
      case 'validation_length_out_of_range':
        return const ApiException(
          code: 0,
          message: 'طول رمز عبور باید بین 8 تا 72 کاراکتر باشد.',
        );
      case 'validation_invalid_email':
        return const ApiException(
          code: 0,
          message: 'ایمیل نامعتبر یا قبلاً استفاده شده است.',
        );
      default:
        return const ApiException();
    }
  }
}
