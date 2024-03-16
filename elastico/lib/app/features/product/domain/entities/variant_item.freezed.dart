// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VariantItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get priceChange => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VariantItemCopyWith<VariantItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantItemCopyWith<$Res> {
  factory $VariantItemCopyWith(
          VariantItem value, $Res Function(VariantItem) then) =
      _$VariantItemCopyWithImpl<$Res, VariantItem>;
  @useResult
  $Res call(
      {String id, String title, String value, int priceChange, int quantity});
}

/// @nodoc
class _$VariantItemCopyWithImpl<$Res, $Val extends VariantItem>
    implements $VariantItemCopyWith<$Res> {
  _$VariantItemCopyWithImpl(this._value, this._then);

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
abstract class _$$VariantItemImplCopyWith<$Res>
    implements $VariantItemCopyWith<$Res> {
  factory _$$VariantItemImplCopyWith(
          _$VariantItemImpl value, $Res Function(_$VariantItemImpl) then) =
      __$$VariantItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String value, int priceChange, int quantity});
}

/// @nodoc
class __$$VariantItemImplCopyWithImpl<$Res>
    extends _$VariantItemCopyWithImpl<$Res, _$VariantItemImpl>
    implements _$$VariantItemImplCopyWith<$Res> {
  __$$VariantItemImplCopyWithImpl(
      _$VariantItemImpl _value, $Res Function(_$VariantItemImpl) _then)
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
    return _then(_$VariantItemImpl(
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

class _$VariantItemImpl implements _VariantItem {
  const _$VariantItemImpl(
      {required this.id,
      required this.title,
      required this.value,
      required this.priceChange,
      required this.quantity});

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
    return 'VariantItem(id: $id, title: $title, value: $value, priceChange: $priceChange, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, value, priceChange, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantItemImplCopyWith<_$VariantItemImpl> get copyWith =>
      __$$VariantItemImplCopyWithImpl<_$VariantItemImpl>(this, _$identity);
}

abstract class _VariantItem implements VariantItem {
  const factory _VariantItem(
      {required final String id,
      required final String title,
      required final String value,
      required final int priceChange,
      required final int quantity}) = _$VariantItemImpl;

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
  _$$VariantItemImplCopyWith<_$VariantItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
