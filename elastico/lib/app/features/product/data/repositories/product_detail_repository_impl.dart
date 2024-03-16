import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/product/data/data_sources/product_detail_datasource.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductDetailRepository)
class ProductDetailRepositoryImpl implements ProductDetailRepository {
  final ProductDetailDatasource _datasource;

  ProductDetailRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<Variant>>> getProductVariants(
      String productId) async {
    try {
      final variants = await _datasource.getProductVariants(productId);
      return Right(variants.map((e) => e.toEntity()).toList());
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
