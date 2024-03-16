import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/category/data/data_sources/category_datasource.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDatasource _datasource;

  CategoryRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<Category>>> getMainCategories() async {
    try {
      final categories = await _datasource.getMainCategories();
      return Right(categories.map((e) => e.toEntity()).toList());
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
