import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart';

class CommentRepositoryImpl extends CommentRepository {
  final CommentDatasource commentDatasource;

  CommentRepositoryImpl({required this.commentDatasource});

  @override
  Future<Either<Failure, List<Comment>>> getProductComments(
      String productId) async {
    try {
      final comments = await commentDatasource.getProductComments(productId);
      return Right(comments);
    } on ApiException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
