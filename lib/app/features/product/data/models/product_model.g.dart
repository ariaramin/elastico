// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      collectionId: json['collectionId'] as String,
      id: json['id'] as String,
      thumbnail: json['thumbnail'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      description: json['description'] as String,
      popularity: json['popularity'] as String,
      category: json['category'] as String,
      price: json['price'] as int,
      discountPrice: json['discountPrice'] as int,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'name': instance.name,
      'description': instance.description,
      'popularity': instance.popularity,
      'category': instance.category,
      'price': instance.price,
      'discountPrice': instance.discountPrice,
    };
