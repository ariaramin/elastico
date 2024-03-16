import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class Register implements Usecase<void, RegisterParams> {
  final AuthRepository _repository;

  Register(this._repository);

  @override
  Future<Either<Failure, void>> call(RegisterParams params) async =>
      _repository.register(
        fullName: params.fullName,
        email: params.email,
        password: params.password,
      );
}

class RegisterParams {
  final String fullName;
  final String email;
  final String password;

  RegisterParams({
    required this.fullName,
    required this.email,
    required this.password,
  });
}
