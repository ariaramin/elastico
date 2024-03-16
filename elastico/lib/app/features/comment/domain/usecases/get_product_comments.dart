import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductComments implements Usecase<List<Comment>, String> {
  final CommentRepository _repository;

  GetProductComments(this._repository);

  @override
  Future<Either<Failure, List<Comment>>> call(params) =>
      _repository.getProductComments(params);
}
