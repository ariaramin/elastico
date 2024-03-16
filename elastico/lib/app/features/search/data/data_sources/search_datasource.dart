import 'package:elastico/app/core/services/remote/pocketbase_service.dart';
import 'package:elastico/app/core/constants/constants.dart';

import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:elastico/app/features/search/data/models/filter_model.dart';
import 'package:elastico/app/features/search/data/models/search_model.dart';
import 'package:injectable/injectable.dart';

sealed class SearchDatasource {
  Future<SearchModel> search(
    int page,
    String query,
    String? filter,
    String? sort,
  );

  Future<List<FilterModel>> getFilters();
}

@Injectable(as: SearchDatasource)
class SearchDatasourceImpl implements SearchDatasource {
  final PocketBaseService _pocketBaseHelper;

  SearchDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<SearchModel> search(
    int page,
    String query,
    String? filter,
    String? sort,
  ) async {
    final response = await _pocketBaseHelper.getList(
      Constants.product,
      // 'page': '$page',
      // 'perPage': '6',
      filter: filter ?? 'name~\'$query\' || description~\'$query\'',
      sort: sort,
    );

    List<ProductModel> products =
        response.items.map((item) => ProductModel.fromRecord(item)).toList();

    return SearchModel(query: query, products: products);
  }

  @override
  Future<List<FilterModel>> getFilters() async {
    final response = await _pocketBaseHelper.getList(
      Constants.filter,
      expand: 'items',
    );
    List<FilterModel> filters =
        response.items.map((item) => FilterModel.fromRecord(item)).toList();
    return filters;
  }
}
