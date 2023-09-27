// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantItemModel _$VariantItemModelFromJson(Map<String, dynamic> json) {
  return _VariantItemModel.fromJson(json);
}

/// @nodoc
mixin _$VariantItemModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get priceChange => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantItemModelCopyWith<VariantItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantItemModelCopyWith<$Res> {
  factory $VariantItemModelCopyWith(
          VariantItemModel value, $Res Function(VariantItemModel) then) =
      _$VariantItemModelCopyWithImpl<$Res, VariantItemModel>;
  @useResult
  $Res call(
      {String id, String title, String value, int priceChange, int quantity});
}

/// @nodoc
class _$VariantItemModelCopyWithImpl<$Res, $Val extends VariantItemModel>
    implements $VariantItemModelCopyWith<$Res> {
  _$VariantItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? value = null,
    Object? priceChange = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantItemModelCopyWith<$Res>
    implements $VariantItemModelCopyWith<$Res> {
  factory _$$_VariantItemModelCopyWith(
          _$_VariantItemModel value, $Res Function(_$_VariantItemModel) then) =
      __$$_VariantItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String value, int priceChange, int quantity});
}

/// @nodoc
class __$$_VariantItemModelCopyWithImpl<$Res>
    extends _$VariantItemModelCopyWithImpl<$Res, _$_VariantItemModel>
    implements _$$_VariantItemModelCopyWith<$Res> {
  __$$_VariantItemModelCopyWithImpl(
      _$_VariantItemModel _value, $Res Function(_$_VariantItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? value = null,
    Object? priceChange = null,
    Object? quantity = null,
  }) {
    return _then(_$_VariantItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantItemModel extends _VariantItemModel {
  const _$_VariantItemModel(
      {required this.id,
      required this.title,
      required this.value,
      required this.priceChange,
      required this.quantity})
      : super._();

  factory _$_VariantItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantItemModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String value;
  @override
  final int priceChange;
  @override
  final int quantity;

  @override
  String toString() {
    return 'VariantItemModel(id: $id, title: $title, value: $value, priceChange: $priceChange, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, value, priceChange, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantItemModelCopyWith<_$_VariantItemModel> get copyWith =>
      __$$_VariantItemModelCopyWithImpl<_$_VariantItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantItemModelToJson(
      this,
    );
  }
}

abstract class _VariantItemModel extends VariantItemModel {
  const factory _VariantItemModel(
      {required final String id,
      required final String title,
      required final String value,
      required final int priceChange,
      required final int quantity}) = _$_VariantItemModel;
  const _VariantItemModel._() : super._();

  factory _VariantItemModel.fromJson(Map<String, dynamic> json) =
      _$_VariantItemModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get value;
  @override
  int get priceChange;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_VariantItemModelCopyWith<_$_VariantItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
