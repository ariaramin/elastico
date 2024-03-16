import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/auth/data/data_sources/auth_datasource.dart';
import 'package:elastico/app/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _datasource;

  AuthRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, void>> login({
    required String email,
    required String password,
  }) async {
    try {
      await _datasource.login(email: email, password: password);
      return const Right(null);
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, void>> register({
    required String fullName,
    required String email,
    required String password,
  }) async {
    try {
      await _datasource.register(
        fullName: fullName,
        email: email,
        password: password,
      );
      return const Right(null);
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
