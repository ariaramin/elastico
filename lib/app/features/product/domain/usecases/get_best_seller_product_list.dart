import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/params.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart';

class GetBestSellerProductList
    extends Usecase<List<Product>, BestSellerProductsParams> {
  final ProductRepository productRepository;

  GetBestSellerProductList({required this.productRepository});

  @override
  Future<Either<Failure, List<Product>>> call(params) {
    return productRepository.getProductList(params.filterSequence);
  }
}
