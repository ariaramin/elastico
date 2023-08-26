class ApiException implements Exception {
  final int? code;
  final String? message;

  const ApiException({this.code, this.message});
}
