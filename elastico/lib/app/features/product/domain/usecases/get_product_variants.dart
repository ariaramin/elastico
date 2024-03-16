import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/domain/repositories/product_detail_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductVariants implements Usecase<List<Variant>, String> {
  final ProductDetailRepository _repository;

  GetProductVariants(this._repository);

  @override
  Future<Either<Failure, List<Variant>>> call(params) {
    return _repository.getProductVariants(params);
  }
}
