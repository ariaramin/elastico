// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Variant {
  String get id => throw _privateConstructorUsedError;
  String get product => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<VariantItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call(
      {String id,
      String product,
      String title,
      String type,
      List<VariantItem> items});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? title = null,
    Object? type = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<VariantItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$_VariantCopyWith(
          _$_Variant value, $Res Function(_$_Variant) then) =
      __$$_VariantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String product,
      String title,
      String type,
      List<VariantItem> items});
}

/// @nodoc
class __$$_VariantCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$_Variant>
    implements _$$_VariantCopyWith<$Res> {
  __$$_VariantCopyWithImpl(_$_Variant _value, $Res Function(_$_Variant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? title = null,
    Object? type = null,
    Object? items = null,
  }) {
    return _then(_$_Variant(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<VariantItem>,
    ));
  }
}

/// @nodoc

class _$_Variant implements _Variant {
  const _$_Variant(
      {required this.id,
      required this.product,
      required this.title,
      required this.type,
      required final List<VariantItem> items})
      : _items = items;

  @override
  final String id;
  @override
  final String product;
  @override
  final String title;
  @override
  final String type;
  final List<VariantItem> _items;
  @override
  List<VariantItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Variant(id: $id, product: $product, title: $title, type: $type, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Variant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, product, title, type,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantCopyWith<_$_Variant> get copyWith =>
      __$$_VariantCopyWithImpl<_$_Variant>(this, _$identity);
}

abstract class _Variant implements Variant {
  const factory _Variant(
      {required final String id,
      required final String product,
      required final String title,
      required final String type,
      required final List<VariantItem> items}) = _$_Variant;

  @override
  String get id;
  @override
  String get product;
  @override
  String get title;
  @override
  String get type;
  @override
  List<VariantItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$_VariantCopyWith<_$_Variant> get copyWith =>
      throw _privateConstructorUsedError;
}
