import 'package:elastico/app/core/helpers/pocketbase_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/category/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

sealed class CategoryDatasource {
  Future<List<CategoryModel>> getCategories();
}

@Injectable(as: CategoryDatasource)
class CategoryDatasourceImpl extends CategoryDatasource {
  final PocketBaseHelper _pocketBaseHelper;

  CategoryDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<List<CategoryModel>> getCategories() async {
    final response = await _pocketBaseHelper.getList(Constants.category);

    List<CategoryModel> categories =
        response.items.map((item) => CategoryModel.fromRecord(item)).toList();

    return categories;
  }
}
