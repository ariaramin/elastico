import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/search/domain/entities/search.dart';
import 'package:elastico/app/features/search/domain/repositories/search_repository.dart';
import 'package:injectable/injectable.dart';

class SearchParams {
  final int page;
  final String query;

  SearchParams({
    required this.page,
    required this.query,
  });
}

@injectable
class SearchProduct implements Usecase<Search, SearchParams> {
  final SearchRepository _repository;

  SearchProduct(this._repository);

  @override
  Future<Either<Failure, Search>> call(params) {
    return _repository.search(params.page, params.query);
  }
}
