import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/search/domain/entities/filter.dart';
import 'package:elastico/app/features/search/domain/repositories/search_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetFilters implements NoParamUsecase<List<Filter>> {
  final SearchRepository _repository;

  GetFilters(this._repository);

  @override
  Future<Either<Failure, List<Filter>>> call() => _repository.getFilters();
}
