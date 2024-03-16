import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddComment implements Usecase<void, AddCommentParams> {
  final CommentRepository _repository;

  AddComment(this._repository);

  @override
  Future<Either<Failure, void>> call(params) => _repository.addComment(
        params.userId,
        params.productId,
        params.text,
        params.rating,
      );
}

class AddCommentParams {
  final String userId;
  final String productId;
  final String text;
  final double rating;

  AddCommentParams({
    required this.userId,
    required this.productId,
    required this.text,
    required this.rating,
  });
}
