// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantItemModel _$$_VariantItemModelFromJson(Map<String, dynamic> json) =>
    _$_VariantItemModel(
      id: json['id'] as String,
      title: json['title'] as String,
      value: json['value'] as String,
      priceChange: json['priceChange'] as int,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_VariantItemModelToJson(_$_VariantItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'value': instance.value,
      'priceChange': instance.priceChange,
      'quantity': instance.quantity,
    };
