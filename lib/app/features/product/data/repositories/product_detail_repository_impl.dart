import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/product/data/data_sources/product_detail_datasource.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductDetailRepository)
class ProductDetailRepositoryImpl extends ProductDetailRepository {
  final ProductDetailDatasource productDetailDatasource;

  ProductDetailRepositoryImpl({required this.productDetailDatasource});

  @override
  Future<Either<Failure, List<Variant>>> getProductVariants(
      String productId) async {
    try {
      final variants =
          await productDetailDatasource.getProductVariants(productId);
      return Right(variants.map((e) => e.toEntity()).toList());
    } on ApiException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
