import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';

abstract class CommentRepository {
  Future<Either<Failure, List<Comment>>> getProductComments(String productId);

  Future<Either<Failure, void>> addComment(
    String userId,
    String productId,
    String text,
    double rating,
  );

  Future<Either<Failure, void>> updateComment(
    String commentId,
    String text,
    double rating,
  );

  Future<Either<Failure, void>> deleteComment(String commentId);
}
