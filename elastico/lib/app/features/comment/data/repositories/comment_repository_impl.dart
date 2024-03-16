import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/api_exception.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/comment/data/data_sources/comment_datasource.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:elastico/app/features/comment/domain/repositories/comment_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommentRepository)
class CommentRepositoryImpl implements CommentRepository {
  final CommentDatasource _datasource;

  CommentRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<Comment>>> getProductComments(
      String productId) async {
    try {
      final comments = await _datasource.getProductComments(productId);
      return Right(comments.map((e) => e.toEntity()).toList());
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, void>> addComment(
    String userId,
    String productId,
    String text,
    double rating,
  ) async {
    try {
      await _datasource.addComment(userId, productId, text, rating);
      return const Right(null);
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, void>> updateComment(
    String commentId,
    String text,
    double rating,
  ) async {
    try {
      await _datasource.updateComment(commentId, text, rating);
      return const Right(null);
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteComment(String commentId) async {
    try {
      await _datasource.deleteComment(commentId);
      return const Right(null);
    } on ApiException catch (error) {
      return Left(ServerFailure(message: error.message));
    } on SocketException {
      return const Left(ConnectionFailure());
    }
  }
}
