// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistItem {
  String get id => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistItemCopyWith<WishlistItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemCopyWith<$Res> {
  factory $WishlistItemCopyWith(
          WishlistItem value, $Res Function(WishlistItem) then) =
      _$WishlistItemCopyWithImpl<$Res, WishlistItem>;
  @useResult
  $Res call({String id, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$WishlistItemCopyWithImpl<$Res, $Val extends WishlistItem>
    implements $WishlistItemCopyWith<$Res> {
  _$WishlistItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishlistItemImplCopyWith<$Res>
    implements $WishlistItemCopyWith<$Res> {
  factory _$$WishlistItemImplCopyWith(
          _$WishlistItemImpl value, $Res Function(_$WishlistItemImpl) then) =
      __$$WishlistItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$WishlistItemImplCopyWithImpl<$Res>
    extends _$WishlistItemCopyWithImpl<$Res, _$WishlistItemImpl>
    implements _$$WishlistItemImplCopyWith<$Res> {
  __$$WishlistItemImplCopyWithImpl(
      _$WishlistItemImpl _value, $Res Function(_$WishlistItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
  }) {
    return _then(_$WishlistItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$WishlistItemImpl implements _WishlistItem {
  const _$WishlistItemImpl({required this.id, required this.product});

  @override
  final String id;
  @override
  final Product product;

  @override
  String toString() {
    return 'WishlistItem(id: $id, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemImplCopyWith<_$WishlistItemImpl> get copyWith =>
      __$$WishlistItemImplCopyWithImpl<_$WishlistItemImpl>(this, _$identity);
}

abstract class _WishlistItem implements WishlistItem {
  const factory _WishlistItem(
      {required final String id,
      required final Product product}) = _$WishlistItemImpl;

  @override
  String get id;
  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$WishlistItemImplCopyWith<_$WishlistItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
