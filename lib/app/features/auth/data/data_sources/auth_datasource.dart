import 'package:elastico/app/core/helpers/pocketbase_helper.dart';
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
  final PocketBaseHelper _pocketBaseHelper;

  AuthDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async =>
      await _pocketBaseHelper.login(email, password);

  @override
  Future<void> register({
    required String fullName,
    required String email,
    required String password,
  }) =>
      _pocketBaseHelper.register(fullName, email, password);
}
