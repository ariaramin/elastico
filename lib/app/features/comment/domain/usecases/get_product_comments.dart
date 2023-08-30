import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart';

class GetProductComments extends Usecase<List<Comment>, String> {
  final CommentRepository commentRepository;

  GetProductComments({required this.commentRepository});

  @override
  Future<Either<Failure, List<Comment>>> call(params) {
    return commentRepository.getProductComments(params);
  }
}
