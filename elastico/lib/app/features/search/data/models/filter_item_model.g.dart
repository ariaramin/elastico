// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterItemModelImpl _$$FilterItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterItemModelImpl(
      title: json['title'] as String,
      type: json['type'] as String,
      filterSequence: json['filterSequence'] as String?,
      sortSequence: json['sortSequence'] as String?,
    );

Map<String, dynamic> _$$FilterItemModelImplToJson(
        _$FilterItemModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'filterSequence': instance.filterSequence,
      'sortSequence': instance.sortSequence,
    };
