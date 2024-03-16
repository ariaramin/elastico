import 'package:elastico/app/features/product/data/models/variant_item_model.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pocketbase/pocketbase.dart';

part 'variant_model.freezed.dart';
part 'variant_model.g.dart';

@HiveType(typeId: 3)
@freezed
class VariantModel with _$VariantModel {
  const VariantModel._();

  const factory VariantModel({
    @HiveField(0) required String id,
    @HiveField(1) required String product,
    @HiveField(2) required String title,
    @HiveField(3) required String type,
    @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
    @HiveField(4)
    required List<VariantItemModel> items,
  }) = _VariantModel;

  factory VariantModel.fromRecord(RecordModel record) =>
      VariantModel.fromJson(record.toJson());

  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);

  factory VariantModel.fromEntity(Variant entity) => VariantModel(
        id: entity.id,
        product: entity.product,
        title: entity.title,
        type: entity.type,
        items: entity.items.map((e) => VariantItemModel.fromEntity(e)).toList(),
      );

  Variant toEntity() => Variant(
        id: id,
        product: product,
        title: title,
        type: type,
        items: items.map((e) => e.toEntity()).toList(),
      );
}

List<VariantItemModel> _convertListOfVariantItem(Map<String, dynamic> json) =>
    (json['items'] as List)
        .map((variantItemJson) => VariantItemModel.fromJson(variantItemJson))
        .toList();
