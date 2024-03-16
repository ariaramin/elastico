import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';

abstract class Usecase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

abstract class NoParamUsecase<T> {
  Future<Either<Failure, T>> call();
}
