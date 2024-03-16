// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      collectionId: json['collectionId'] as String,
      id: json['id'] as String,
      parent: json['parent'] as String,
      thumbnail: json['thumbnail'] as String,
      icon: json['icon'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'id': instance.id,
      'parent': instance.parent,
      'thumbnail': instance.thumbnail,
      'icon': instance.icon,
      'title': instance.title,
    };
