// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: json['id'] as String,
      user: _convertUser(json['expand'] as Map<String, dynamic>),
      product: json['product'] as String,
      text: json['text'] as String,
      rating: (json['rating'] as num).toDouble(),
      isPublished: json['isPublished'] as bool,
      created: json['created'] as String,
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expand': instance.user,
      'product': instance.product,
      'text': instance.text,
      'rating': instance.rating,
      'isPublished': instance.isPublished,
      'created': instance.created,
    };
