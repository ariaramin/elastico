import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/home/data/data_sources/home_datasource.dart';
import 'package:elastico/app/features/home/domain/entities/home_data.dart';
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource _datasource;

  HomeRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, HomeData>> getHomeData() async {
    try {
      final homeData = await _datasource.getHomeData();
      return Right(homeData.toEntity());
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
