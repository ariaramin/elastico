import 'package:elastico/app/core/services/remote/pocketbase_service.dart';
import 'package:elastico/app/core/constants/constants.dart';
import 'package:elastico/app/features/comment/data/models/comment_model.dart';
import 'package:injectable/injectable.dart';

sealed class CommentDatasource {
  Future<List<CommentModel>> getProductComments(String productId);

  Future<void> addComment(
    String userId,
    String productId,
    String text,
    double rating,
  );

  Future<void> updateComment(
    String commentId,
    String text,
    double rating,
  );

  Future<void> deleteComment(String commentId);
}

@Injectable(as: CommentDatasource)
class CommentDatasourceImpl implements CommentDatasource {
  final PocketBaseService _pocketBaseHelper;

  CommentDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<List<CommentModel>> getProductComments(String productId) async {
    final response = await _pocketBaseHelper.getList(
      Constants.comment,
      expand: 'user',
      filter: 'product=\'$productId\' && isPublished=true',
    );

    List<CommentModel> comments =
        response.items.map((item) => CommentModel.fromRecord(item)).toList();

    return comments;
  }

  @override
  Future<void> addComment(
    String userId,
    String productId,
    String text,
    double rating,
  ) async =>
      await _pocketBaseHelper.create(
        Constants.comment,
        data: {
          'user': userId,
          'product': productId,
          'text': text,
          'rating': rating,
          'isPublished': true,
        },
      );

  @override
  Future<void> updateComment(
    String commentId,
    String text,
    double rating,
  ) async =>
      await _pocketBaseHelper.update(
        Constants.comment,
        id: commentId,
        data: {
          'text': text,
          'rating': rating,
        },
      );

  @override
  Future<void> deleteComment(String commentId) async =>
      await _pocketBaseHelper.delete(
        Constants.comment,
        id: commentId,
      );
}
