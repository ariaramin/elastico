import 'package:elastico/app/core/helpers/pocketbase_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/data/models/variant_model.dart';
import 'package:injectable/injectable.dart';

sealed class ProductDetailDatasource {
  Future<List<VariantModel>> getProductVariants(String productId);
}

@Injectable(as: ProductDetailDatasource)
class ProductDetailDatasourceImpl extends ProductDetailDatasource {
  final PocketBaseHelper _pocketBaseHelper;

  ProductDetailDatasourceImpl(this._pocketBaseHelper);

  @override
  Future<List<VariantModel>> getProductVariants(String productId) async {
    final response = await _pocketBaseHelper.getList(
      Constants.productVariant,
      expand: 'items',
      filter: 'product=\'$productId\'',
    );

    List<VariantModel> variants =
        response.items.map((item) => VariantModel.fromRecord(item)).toList();

    return variants;
  }
}
