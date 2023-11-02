import 'package:elastico/app/core/services/remote/pocketbase_service.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:elastico/app/features/search/data/models/search_model.dart';
import 'package:injectable/injectable.dart';

sealed class SearchDatasource {
  Future<SearchModel> search(int page, String query);
}

@Injectable(as: SearchDatasource)
class SearchDatasourceImpl implements SearchDatasource {
  final PocketBaseService _pocketBaseHelper;

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
