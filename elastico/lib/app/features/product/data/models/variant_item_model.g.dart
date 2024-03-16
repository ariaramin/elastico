// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VariantItemModelAdapter extends TypeAdapter<VariantItemModel> {
  @override
  final int typeId = 4;

  @override
  VariantItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VariantItemModel(
      id: fields[0] as String,
      title: fields[1] as String,
      value: fields[2] as String,
      priceChange: fields[3] as int,
      quantity: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, VariantItemModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.value)
      ..writeByte(3)
      ..write(obj.priceChange)
      ..writeByte(4)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariantItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantItemModelImpl _$$VariantItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VariantItemModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      value: json['value'] as String,
      priceChange: json['priceChange'] as int,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$VariantItemModelImplToJson(
        _$VariantItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'value': instance.value,
      'priceChange': instance.priceChange,
      'quantity': instance.quantity,
    };
