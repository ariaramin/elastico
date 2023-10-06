import 'package:elastico/app/core/helpers/pocketbase_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:elastico/app/features/search/data/models/search_model.dart';
import 'package:injectable/injectable.dart';

abstract class SearchDatasource {
  Future<SearchModel> search(int page, String query);
}

@Injectable(as: SearchDatasource)
class SearchDatasourceImpl extends SearchDatasource {
  final PocketBaseHelper _pocketBaseHelper;

  SearchDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<SearchModel> search(int page, String query) async {
    final response = await _pocketBaseHelper.getList(
      Constants.product,
      // 'page': '$page',
      // 'perPage': '6',
      filter: 'name~\'$query\' || description~\'$query\'',
    );

    List<ProductModel> products =
        response.items.map((item) => ProductModel.fromRecord(item)).toList();

    return SearchModel(query: query, products: products);
  }
}
