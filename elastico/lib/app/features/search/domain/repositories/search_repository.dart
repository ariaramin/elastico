import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/search/domain/entities/filter.dart';
import 'package:elastico/app/features/search/domain/entities/search.dart';

abstract class SearchRepository {
  Future<Either<Failure, Search>> search(
    int page,
    String query,
    String? filter,
    String? sort,
  );

  Future<Either<Failure, List<Filter>>> getFilters();
}
