import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';

abstract class ProductDetailRepository {
  Future<Either<Failure, List<Variant>>> getProductVariants(String productId);
}
