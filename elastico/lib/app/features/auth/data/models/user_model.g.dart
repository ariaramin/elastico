// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      collectionId: json['collectionId'] as String,
      id: json['id'] as String,
      avatar: json['avatar'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'id': instance.id,
      'avatar': instance.avatar,
      'name': instance.name,
      'email': instance.email,
    };
