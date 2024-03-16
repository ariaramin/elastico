import 'package:elastico/app/core/services/remote/pocketbase_service.dart';
import 'package:elastico/app/core/constants/constants.dart';

import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

sealed class ProductDatasource {
  Future<List<ProductModel>> getProductList(String? filterSequence);

  Future<ProductModel> getProduct(String productId);
}

@Injectable(as: ProductDatasource)
class ProductDatasourceImpl implements ProductDatasource {
  final PocketBaseService _pocketBaseHelper;

  ProductDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<List<ProductModel>> getProductList(String? filterSequence) async {
    final response = await _pocketBaseHelper.getList(
      Constants.product,
      filter: filterSequence,
    );

    List<ProductModel> products =
        response.items.map((item) => ProductModel.fromRecord(item)).toList();

    return products;
  }

  @override
  Future<ProductModel> getProduct(String productId) async {
    final response = await _pocketBaseHelper.getOne(
      Constants.product,
      id: productId,
    );

    ProductModel product = ProductModel.fromRecord(response);

    return product;
  }
}
