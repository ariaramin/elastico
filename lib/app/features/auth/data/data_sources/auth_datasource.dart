import 'package:elastico/app/core/helpers/auth_helper.dart';
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
  final AuthHelper _authHelper;

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
