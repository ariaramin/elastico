import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> login({
    required String email,
    required String password,
  });
  Future<Either<Failure, void>> register({
    required String fullName,
    required String email,
    required String password,
  });
}
