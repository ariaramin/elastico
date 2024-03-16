import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductList implements Usecase<List<Product>, String> {
  final ProductRepository _repository;

  GetProductList(this._repository);

  @override
  Future<Either<Failure, List<Product>>> call(params) {
    return _repository.getProductList(params);
  }
}
