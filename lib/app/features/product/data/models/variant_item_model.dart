import 'package:elastico/app/features/product/domain/entities/variant_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_item_model.freezed.dart';
part 'variant_item_model.g.dart';

@freezed
class VariantItemModel with _$VariantItemModel {
  const VariantItemModel._();

  const factory VariantItemModel({
    required String id,
    required String title,
    required String value,
    required int priceChange,
    required int quantity,
  }) = _VariantItemModel;

  factory VariantItemModel.fromJson(Map<String, dynamic> json) =>
      _$VariantItemModelFromJson(json);

  VariantItem toEntity() => VariantItem(
        id: id,
        title: title,
        value: value,
        priceChange: priceChange,
        quantity: quantity,
      );
}
