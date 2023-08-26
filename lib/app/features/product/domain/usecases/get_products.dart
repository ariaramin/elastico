import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart';

class GetProducts extends Usecase<List<Product>, String> {
  final ProductRepository productRepository;

  GetProducts({required this.productRepository});

  @override
  Future<Either<Failure, List<Product>>> call(params) {
    return productRepository.getProductList(params);
  }
}
