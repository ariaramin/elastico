import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class Login implements Usecase<void, LoginParams> {
  final AuthRepository _repository;

  Login(this._repository);

  @override
  Future<Either<Failure, void>> call(LoginParams params) async =>
      _repository.login(
        email: params.email,
        password: params.password,
      );
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({
    required this.email,
    required this.password,
  });
}
