import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:elastico/app/features/search/domain/entities/search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  const SearchModel._();

  const factory SearchModel({
    required String query,
    @JsonKey(fromJson: _convertListOfProduct)
    required List<ProductModel> products,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);

  Search toEntity() => Search(
        query: query,
        products: products.map((e) => e.toEntity()).toList(),
      );
}

List<ProductModel> _convertListOfProduct(Map<String, dynamic> json) {
  return (json['items'] as List)
      .map((productJson) => ProductModel.fromJson(productJson))
      .toList();
}
