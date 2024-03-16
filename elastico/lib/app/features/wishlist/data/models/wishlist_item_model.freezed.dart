// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistItemModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  ProductModel get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistItemModelCopyWith<WishlistItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemModelCopyWith<$Res> {
  factory $WishlistItemModelCopyWith(
          WishlistItemModel value, $Res Function(WishlistItemModel) then) =
      _$WishlistItemModelCopyWithImpl<$Res, WishlistItemModel>;
  @useResult
  $Res call({@HiveField(0) String id, @HiveField(1) ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$WishlistItemModelCopyWithImpl<$Res, $Val extends WishlistItemModel>
    implements $WishlistItemModelCopyWith<$Res> {
  _$WishlistItemModelCopyWithImpl(this._value, this._then);

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
              as ProductModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishlistItemModelImplCopyWith<$Res>
    implements $WishlistItemModelCopyWith<$Res> {
  factory _$$WishlistItemModelImplCopyWith(_$WishlistItemModelImpl value,
          $Res Function(_$WishlistItemModelImpl) then) =
      __$$WishlistItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String id, @HiveField(1) ProductModel product});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$WishlistItemModelImplCopyWithImpl<$Res>
    extends _$WishlistItemModelCopyWithImpl<$Res, _$WishlistItemModelImpl>
    implements _$$WishlistItemModelImplCopyWith<$Res> {
  __$$WishlistItemModelImplCopyWithImpl(_$WishlistItemModelImpl _value,
      $Res Function(_$WishlistItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
  }) {
    return _then(_$WishlistItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$WishlistItemModelImpl extends _WishlistItemModel {
  const _$WishlistItemModelImpl(
      {@HiveField(0) required this.id, @HiveField(1) required this.product})
      : super._();

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final ProductModel product;

  @override
  String toString() {
    return 'WishlistItemModel(id: $id, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemModelImplCopyWith<_$WishlistItemModelImpl> get copyWith =>
      __$$WishlistItemModelImplCopyWithImpl<_$WishlistItemModelImpl>(
          this, _$identity);
}

abstract class _WishlistItemModel extends WishlistItemModel {
  const factory _WishlistItemModel(
          {@HiveField(0) required final String id,
          @HiveField(1) required final ProductModel product}) =
      _$WishlistItemModelImpl;
  const _WishlistItemModel._() : super._();

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  ProductModel get product;
  @override
  @JsonKey(ignore: true)
  _$$WishlistItemModelImplCopyWith<_$WishlistItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
