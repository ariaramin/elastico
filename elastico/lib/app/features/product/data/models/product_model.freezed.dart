// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @HiveField(0)
  String get collectionId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get thumbnail => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String> get images => throw _privateConstructorUsedError;
  @HiveField(4)
  String get name => throw _privateConstructorUsedError;
  @HiveField(5)
  String get description => throw _privateConstructorUsedError;
  @HiveField(6)
  String get popularity => throw _privateConstructorUsedError;
  @HiveField(7)
  String get category => throw _privateConstructorUsedError;
  @HiveField(8)
  int get price => throw _privateConstructorUsedError;
  @HiveField(9)
  int get discountPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {@HiveField(0) String collectionId,
      @HiveField(1) String id,
      @HiveField(2) String thumbnail,
      @HiveField(3) List<String> images,
      @HiveField(4) String name,
      @HiveField(5) String description,
      @HiveField(6) String popularity,
      @HiveField(7) String category,
      @HiveField(8) int price,
      @HiveField(9) int discountPrice});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? id = null,
    Object? thumbnail = null,
    Object? images = null,
    Object? name = null,
    Object? description = null,
    Object? popularity = null,
    Object? category = null,
    Object? price = null,
    Object? discountPrice = null,
  }) {
    return _then(_value.copyWith(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String collectionId,
      @HiveField(1) String id,
      @HiveField(2) String thumbnail,
      @HiveField(3) List<String> images,
      @HiveField(4) String name,
      @HiveField(5) String description,
      @HiveField(6) String popularity,
      @HiveField(7) String category,
      @HiveField(8) int price,
      @HiveField(9) int discountPrice});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? id = null,
    Object? thumbnail = null,
    Object? images = null,
    Object? name = null,
    Object? description = null,
    Object? popularity = null,
    Object? category = null,
    Object? price = null,
    Object? discountPrice = null,
  }) {
    return _then(_$ProductModelImpl(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl extends _ProductModel {
  const _$ProductModelImpl(
      {@HiveField(0) required this.collectionId,
      @HiveField(1) required this.id,
      @HiveField(2) required this.thumbnail,
      @HiveField(3) required final List<String> images,
      @HiveField(4) required this.name,
      @HiveField(5) required this.description,
      @HiveField(6) required this.popularity,
      @HiveField(7) required this.category,
      @HiveField(8) required this.price,
      @HiveField(9) required this.discountPrice})
      : _images = images,
        super._();

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  @HiveField(0)
  final String collectionId;
  @override
  @HiveField(1)
  final String id;
  @override
  @HiveField(2)
  final String thumbnail;
  final List<String> _images;
  @override
  @HiveField(3)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @HiveField(4)
  final String name;
  @override
  @HiveField(5)
  final String description;
  @override
  @HiveField(6)
  final String popularity;
  @override
  @HiveField(7)
  final String category;
  @override
  @HiveField(8)
  final int price;
  @override
  @HiveField(9)
  final int discountPrice;

  @override
  String toString() {
    return 'ProductModel(collectionId: $collectionId, id: $id, thumbnail: $thumbnail, images: $images, name: $name, description: $description, popularity: $popularity, category: $category, price: $price, discountPrice: $discountPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collectionId,
      id,
      thumbnail,
      const DeepCollectionEquality().hash(_images),
      name,
      description,
      popularity,
      category,
      price,
      discountPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {@HiveField(0) required final String collectionId,
      @HiveField(1) required final String id,
      @HiveField(2) required final String thumbnail,
      @HiveField(3) required final List<String> images,
      @HiveField(4) required final String name,
      @HiveField(5) required final String description,
      @HiveField(6) required final String popularity,
      @HiveField(7) required final String category,
      @HiveField(8) required final int price,
      @HiveField(9) required final int discountPrice}) = _$ProductModelImpl;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  @HiveField(0)
  String get collectionId;
  @override
  @HiveField(1)
  String get id;
  @override
  @HiveField(2)
  String get thumbnail;
  @override
  @HiveField(3)
  List<String> get images;
  @override
  @HiveField(4)
  String get name;
  @override
  @HiveField(5)
  String get description;
  @override
  @HiveField(6)
  String get popularity;
  @override
  @HiveField(7)
  String get category;
  @override
  @HiveField(8)
  int get price;
  @override
  @HiveField(9)
  int get discountPrice;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
