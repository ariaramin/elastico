import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:elastico/app/features/category/domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategories extends NoParamUsecase<List<Category>> {
  final CategoryRepository categoryRepository;

  GetCategories({required this.categoryRepository});

  @override
  Future<Either<Failure, List<Category>>> call() {
    return categoryRepository.getCategories();
  }
}
