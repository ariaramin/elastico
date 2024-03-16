import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/search/data/data_sources/search_datasource.dart';
import 'package:elastico/app/features/search/domain/entities/filter.dart';
import 'package:elastico/app/features/search/domain/entities/search.dart';
import 'package:elastico/app/features/search/domain/repositories/search_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final SearchDatasource _datasource;

  SearchRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Search>> search(
    int page,
    String query,
    String? filter,
    String? sort,
  ) async {
    try {
      final result = await _datasource.search(page, query, filter, sort);
      return Right(result.toEntity());
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, List<Filter>>> getFilters() async {
    try {
      final result = await _datasource.getFilters();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
