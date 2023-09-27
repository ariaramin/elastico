// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantModel _$$_VariantModelFromJson(Map<String, dynamic> json) =>
    _$_VariantModel(
      id: json['id'] as String,
      product: json['product'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      items: _convertListOfVariantItem(json['expand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VariantModelToJson(_$_VariantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'title': instance.title,
      'type': instance.type,
      'expand': instance.items,
    };
