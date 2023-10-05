import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:elastico/app/features/search/data/models/search_model.dart';
import 'package:injectable/injectable.dart';

abstract class SearchDatasource {
  Future<SearchModel> search(int page, String query);
}

@Injectable(as: SearchDatasource)
class SearchDatasourceImpl extends SearchDatasource {
  final ApiHelper _apiHelper;

  SearchDatasourceImpl(this._apiHelper);

  @override
  Future<SearchModel> search(int page, String query) async {
    final response = await _apiHelper.get(
      Constants.productUrl,
      queryParameters: {
        // 'page': '$page',
        // 'perPage': '6',
        'filter': 'name~\'$query\' || description~\'$query\''
      },
    );

    List<ProductModel> products = (response['items'] as List)
        .map((item) => ProductModel.fromJson(item))
        .toList();

    return SearchModel(query: query, products: products);
  }
}
