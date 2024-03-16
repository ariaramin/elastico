import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateComment implements Usecase<void, UpdateCommentParams> {
  final CommentRepository _repository;

  UpdateComment(this._repository);

  @override
  Future<Either<Failure, void>> call(params) => _repository.updateComment(
        params.commentId,
        params.text,
        params.rating,
      );
}

class UpdateCommentParams {
  final String commentId;
  final String text;
  final double rating;

  UpdateCommentParams({
    required this.commentId,
    required this.text,
    required this.rating,
  });
}
