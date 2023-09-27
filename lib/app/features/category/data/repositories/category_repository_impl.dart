import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/category/data/data_sources/category_datasource.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryDatasource categoryDatasource;

  CategoryRepositoryImpl({required this.categoryDatasource});

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try {
      final categories = await categoryDatasource.getCategories();
      return Right(categories.map((e) => e.toEntity()).toList());
    } on ApiException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
