import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProduct extends Usecase<Product, String> {
  final ProductRepository productRepository;

  GetProduct({required this.productRepository});

  @override
  Future<Either<Failure, Product>> call(params) {
    return productRepository.getProduct(params);
  }
}
