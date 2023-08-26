import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/product/data/data_sources/product_datasource.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDatasource productDatasource;

  ProductRepositoryImpl({required this.productDatasource});

  @override
  Future<Either<Failure, List<Product>>> getProductList(
    String? filterSequence,
  ) async {
    try {
      final productList =
          await productDatasource.getProductList(filterSequence);
      return Right(productList);
    } on ApiException {
      return Left(ServerFailure());
    } on SocketException {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, Product>> getProduct(String productId) async {
    try {
      final product = await productDatasource.getProduct(productId);
      return Right(product);
    } on ApiException {
      return Left(ServerFailure());
    } on SocketException {
      return Left(ConnectionFailure());
    }
  }
}
