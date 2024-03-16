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
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String get value => throw _privateConstructorUsedError;
  @HiveField(3)
  int get priceChange => throw _privateConstructorUsedError;
  @HiveField(4)
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
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String value,
      @HiveField(3) int priceChange,
      @HiveField(4) int quantity});
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
abstract class _$$VariantItemModelImplCopyWith<$Res>
    implements $VariantItemModelCopyWith<$Res> {
  factory _$$VariantItemModelImplCopyWith(_$VariantItemModelImpl value,
          $Res Function(_$VariantItemModelImpl) then) =
      __$$VariantItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String value,
      @HiveField(3) int priceChange,
      @HiveField(4) int quantity});
}

/// @nodoc
class __$$VariantItemModelImplCopyWithImpl<$Res>
    extends _$VariantItemModelCopyWithImpl<$Res, _$VariantItemModelImpl>
    implements _$$VariantItemModelImplCopyWith<$Res> {
  __$$VariantItemModelImplCopyWithImpl(_$VariantItemModelImpl _value,
      $Res Function(_$VariantItemModelImpl) _then)
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
    return _then(_$VariantItemModelImpl(
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
class _$VariantItemModelImpl extends _VariantItemModel {
  const _$VariantItemModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.value,
      @HiveField(3) required this.priceChange,
      @HiveField(4) required this.quantity})
      : super._();

  factory _$VariantItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantItemModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String value;
  @override
  @HiveField(3)
  final int priceChange;
  @override
  @HiveField(4)
  final int quantity;

  @override
  String toString() {
    return 'VariantItemModel(id: $id, title: $title, value: $value, priceChange: $priceChange, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantItemModelImpl &&
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
  _$$VariantItemModelImplCopyWith<_$VariantItemModelImpl> get copyWith =>
      __$$VariantItemModelImplCopyWithImpl<_$VariantItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantItemModelImplToJson(
      this,
    );
  }
}

abstract class _VariantItemModel extends VariantItemModel {
  const factory _VariantItemModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String title,
      @HiveField(2) required final String value,
      @HiveField(3) required final int priceChange,
      @HiveField(4) required final int quantity}) = _$VariantItemModelImpl;
  const _VariantItemModel._() : super._();

  factory _VariantItemModel.fromJson(Map<String, dynamic> json) =
      _$VariantItemModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String get value;
  @override
  @HiveField(3)
  int get priceChange;
  @override
  @HiveField(4)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$VariantItemModelImplCopyWith<_$VariantItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
