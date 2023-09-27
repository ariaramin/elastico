import 'package:dio/dio.dart';
import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/comment/data/models/comment_model.dart';
import 'package:injectable/injectable.dart';

sealed class CommentDatasource {
  Future<List<CommentModel>> getProductComments(String productId);
}

@Injectable(as: CommentDatasource)
class CommentDatasourceImpl extends CommentDatasource {
  final ApiHelper _apiHelper;

  CommentDatasourceImpl({required Dio dio}) : _apiHelper = ApiHelper(dio);

  @override
  Future<List<CommentModel>> getProductComments(String productId) async {
    final response = await _apiHelper.get(
      Constants.commentUrl,
      queryParameters: {
        'expand': 'user',
        'filter': 'product=\'$productId\' && isPublished=true',
      },
    );

    List<CommentModel> comments = (response['items'] as List)
        .map((item) => CommentModel.fromJson(item))
        .toList();

    return comments;
  }
}
