// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 1;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      collectionId: fields[0] as String,
      id: fields[1] as String,
      thumbnail: fields[2] as String,
      images: (fields[3] as List).cast<String>(),
      name: fields[4] as String,
      description: fields[5] as String,
      popularity: fields[6] as String,
      category: fields[7] as String,
      price: fields[8] as int,
      discountPrice: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.collectionId)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.thumbnail)
      ..writeByte(3)
      ..write(obj.images)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.popularity)
      ..writeByte(7)
      ..write(obj.category)
      ..writeByte(8)
      ..write(obj.price)
      ..writeByte(9)
      ..write(obj.discountPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
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

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
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
