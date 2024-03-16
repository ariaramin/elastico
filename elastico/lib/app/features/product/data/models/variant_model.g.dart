// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VariantModelAdapter extends TypeAdapter<VariantModel> {
  @override
  final int typeId = 3;

  @override
  VariantModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VariantModel(
      id: fields[0] as String,
      product: fields[1] as String,
      title: fields[2] as String,
      type: fields[3] as String,
      items: (fields[4] as List).cast<VariantItemModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, VariantModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.product)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariantModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantModelImpl _$$VariantModelImplFromJson(Map<String, dynamic> json) =>
    _$VariantModelImpl(
      id: json['id'] as String,
      product: json['product'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      items: _convertListOfVariantItem(json['expand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VariantModelImplToJson(_$VariantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'title': instance.title,
      'type': instance.type,
      'expand': instance.items,
    };
