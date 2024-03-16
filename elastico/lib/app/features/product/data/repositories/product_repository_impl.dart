import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/product/data/data_sources/product_datasource.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductDatasource _datasource;

  ProductRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<Product>>> getProductList(
    String? filterSequence,
  ) async {
    try {
      final productList = await _datasource.getProductList(filterSequence);
      return Right(productList.map((e) => e.toEntity()).toList());
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, Product>> getProduct(String productId) async {
    try {
      final product = await _datasource.getProduct(productId);
      return Right(product.toEntity());
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
