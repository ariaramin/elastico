import 'package:dio/dio.dart';
import 'package:elastico/app/core/helpers/api_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/data/models/variant_model.dart';
import 'package:injectable/injectable.dart';

sealed class ProductDetailDatasource {
  Future<List<VariantModel>> getProductVariants(String productId);
}

@Injectable(as: ProductDetailDatasource)
class ProductDetailDatasourceImpl extends ProductDetailDatasource {
  final ApiHelper _apiHelper;

  ProductDetailDatasourceImpl({required Dio dio}) : _apiHelper = ApiHelper(dio);

  @override
  Future<List<VariantModel>> getProductVariants(String productId) async {
    final response = await _apiHelper.get(
      Constants.productVariantUrl,
      queryParameters: {
        'expand': 'items',
        'filter': 'product=\'$productId\'',
      },
    );

    List<VariantModel> variants = (response['items'] as List)
        .map((item) => VariantModel.fromJson(item))
        .toList();

    return variants;
  }
}
