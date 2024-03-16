import 'package:elastico/app/core/services/remote/auth_service.dart';
import 'package:injectable/injectable.dart';

abstract class AuthDataSource {
  Future<void> login({
    required String email,
    required String password,
  });
  Future<void> register({
    required String fullName,
    required String email,
    required String password,
  });
}

@Injectable(as: AuthDataSource)
class AuthDatasourceImpl implements AuthDataSource {
  final AuthService _authHelper;

  AuthDatasourceImpl(this._authHelper);

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async =>
      await _authHelper.login(email, password);

  @override
  Future<void> register({
    required String fullName,
    required String email,
    required String password,
  }) =>
      _authHelper.register(fullName, email, password);
}
