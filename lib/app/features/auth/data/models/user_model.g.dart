// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      collectionId: json['collectionId'] as String,
      id: json['id'] as String,
      avatar: json['avatar'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'id': instance.id,
      'avatar': instance.avatar,
      'name': instance.name,
      'username': instance.username,
      'verified': instance.verified,
    };
