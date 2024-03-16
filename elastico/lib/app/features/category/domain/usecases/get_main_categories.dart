import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMainCategories implements NoParamUsecase<List<Category>> {
  final CategoryRepository _repository;

  GetMainCategories(this._repository);

  @override
  Future<Either<Failure, List<Category>>> call() {
    return _repository.getMainCategories();
  }
}
