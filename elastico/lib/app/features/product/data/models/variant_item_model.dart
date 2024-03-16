import 'package:elastico/app/features/product/domain/entities/variant_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'variant_item_model.freezed.dart';
part 'variant_item_model.g.dart';

@HiveType(typeId: 4)
@freezed
class VariantItemModel with _$VariantItemModel {
  const VariantItemModel._();

  const factory VariantItemModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String value,
    @HiveField(3) required int priceChange,
    @HiveField(4) required int quantity,
  }) = _VariantItemModel;

  factory VariantItemModel.fromJson(Map<String, dynamic> json) =>
      _$VariantItemModelFromJson(json);

  factory VariantItemModel.fromEntity(VariantItem entity) => VariantItemModel(
        id: entity.id,
        title: entity.title,
        value: entity.value,
        priceChange: entity.priceChange,
        quantity: entity.quantity,
      );

  VariantItem toEntity() => VariantItem(
        id: id,
        title: title,
        value: value,
        priceChange: priceChange,
        quantity: quantity,
      );
}
