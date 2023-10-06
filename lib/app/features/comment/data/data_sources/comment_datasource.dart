import 'package:elastico/app/core/helpers/pocketbase_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/comment/data/models/comment_model.dart';
import 'package:injectable/injectable.dart';

sealed class CommentDatasource {
  Future<List<CommentModel>> getProductComments(String productId);
}

@Injectable(as: CommentDatasource)
class CommentDatasourceImpl extends CommentDatasource {
  final PocketBaseHelper _pocketBaseHelper;

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
}
