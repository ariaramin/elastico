import 'package:elastico/app/core/services/remote/pocketbase_service.dart';
import 'package:elastico/app/core/constants/constants.dart';

import 'package:elastico/app/features/category/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

sealed class CategoryDatasource {
  Future<List<CategoryModel>> getMainCategories();
}

@Injectable(as: CategoryDatasource)
class CategoryDatasourceImpl implements CategoryDatasource {
  final PocketBaseService _pocketBaseHelper;

  CategoryDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<List<CategoryModel>> getMainCategories() async {
    final response = await _pocketBaseHelper.getList(
      Constants.category,
      filter: 'parent=null',
    );

    List<CategoryModel> categories =
        response.items.map((item) => CategoryModel.fromRecord(item)).toList();

    return categories;
  }
}
