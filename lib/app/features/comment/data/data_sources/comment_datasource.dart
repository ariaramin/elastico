import 'package:dio/dio.dart';
import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/comment/data/models/comment_model.dart';

abstract class CommentDatasource {
  Future<List<CommentModel>> getProductComments(String productId);
}

class CommentDatasourceImpl extends CommentDatasource {
  final ApiHelper _apiHelper;

  CommentDatasourceImpl({required Dio dio}) : _apiHelper = ApiHelper(dio);

  @override
  Future<List<CommentModel>> getProductComments(String productId) async {
    final response = await _apiHelper.get(
      Constants.commentUrl,
      queryParameters: {
        'expand': 'user',
        'filter': 'product=\'$productId\' && is_published=true',
      },
    );

    List<CommentModel> comments = (response['items'] as List)
        .map((item) => CommentModel.fromJson(item))
        .toList();

    return comments;
  }
}
