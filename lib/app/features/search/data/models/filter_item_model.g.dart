// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterItemModel _$$_FilterItemModelFromJson(Map<String, dynamic> json) =>
    _$_FilterItemModel(
      title: json['title'] as String,
      type: json['type'] as String,
      filterSequence: json['filterSequence'] as String?,
      sortSequence: json['sortSequence'] as String?,
    );

Map<String, dynamic> _$$_FilterItemModelToJson(_$_FilterItemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'filterSequence': instance.filterSequence,
      'sortSequence': instance.sortSequence,
    };
