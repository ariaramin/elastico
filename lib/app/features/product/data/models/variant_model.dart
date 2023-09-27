import 'package:elastico/app/features/product/data/models/variant_item_model.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_model.freezed.dart';
part 'variant_model.g.dart';

@freezed
class VariantModel with _$VariantModel {
  const VariantModel._();

  const factory VariantModel({
    required String id,
    required String product,
    required String title,
    required String type,
    @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
    required List<VariantItemModel> items,
  }) = _VariantModel;

  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);

  Variant toEntity() => Variant(
        id: id,
        product: product,
        title: title,
        type: type,
        items: items.map((e) => e.toEntity()).toList(),
      );
}

List<VariantItemModel> _convertListOfVariantItem(Map<String, dynamic> json) {
  return (json['items'] as List)
      .map((variantItemJson) => VariantItemModel.fromJson(variantItemJson))
      .toList();
}
