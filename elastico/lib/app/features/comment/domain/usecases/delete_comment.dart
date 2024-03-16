import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteComment implements Usecase<void, String> {
  final CommentRepository _repository;

  DeleteComment(this._repository);

  @override
  Future<Either<Failure, void>> call(params) =>
      _repository.deleteComment(params);
}
