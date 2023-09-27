import 'package:dio/dio.dart';
import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

sealed class ProductDatasource {
  Future<List<ProductModel>> getProductList(String? filterSequence);

  Future<ProductModel> getProduct(String productId);
}

@Injectable(as: ProductDatasource)
class ProductDatasourceImpl extends ProductDatasource {
  final ApiHelper _apiHelper;

  ProductDatasourceImpl({required Dio dio}) : _apiHelper = ApiHelper(dio);

  @override
  Future<List<ProductModel>> getProductList(String? filterSequence) async {
    final response = await _apiHelper.get(
      Constants.productUrl,
      queryParameters: {"filter": filterSequence},
    );

    List<ProductModel> products = (response['items'] as List)
        .map((item) => ProductModel.fromJson(item))
        .toList();

    return products;
  }

  @override
  Future<ProductModel> getProduct(String productId) async {
    final response = await _apiHelper.get('${Constants.productUrl}/$productId');

    ProductModel product = ProductModel.fromJson(response);
    return product;
  }
}
