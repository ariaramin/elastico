import 'package:dio/dio.dart';
import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/category/data/models/category_model.dart';

abstract class CategoryDatasource {
  Future<List<CategoryModel>> getCategories();
}

class CategoryDatasourceImpl extends CategoryDatasource {
  final ApiHelper _apiHelper;

  CategoryDatasourceImpl({required Dio dio}) : _apiHelper = ApiHelper(dio);

  @override
  Future<List<CategoryModel>> getCategories() async {
    final response = await _apiHelper.get(Constants.categoryUrl);

    List<CategoryModel> categories = (response['items'] as List)
        .map((item) => CategoryModel.fromJson(item))
        .toList();
    return categories;
  }
}
