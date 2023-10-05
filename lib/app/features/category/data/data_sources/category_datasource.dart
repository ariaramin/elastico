import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/category/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

sealed class CategoryDatasource {
  Future<List<CategoryModel>> getCategories();
}

@Injectable(as: CategoryDatasource)
class CategoryDatasourceImpl extends CategoryDatasource {
  final ApiHelper _apiHelper;

  CategoryDatasourceImpl(this._apiHelper);

  @override
  Future<List<CategoryModel>> getCategories() async {
    final response = await _apiHelper.get(Constants.categoryUrl);

    List<CategoryModel> categories = (response['items'] as List)
        .map((item) => CategoryModel.fromJson(item))
        .toList();
    return categories;
  }
}
