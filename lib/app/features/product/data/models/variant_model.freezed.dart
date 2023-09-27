// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return _VariantModel.fromJson(json);
}

/// @nodoc
mixin _$VariantModel {
  String get id => throw _privateConstructorUsedError;
  String get product => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
  List<VariantItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantModelCopyWith<VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantModelCopyWith<$Res> {
  factory $VariantModelCopyWith(
          VariantModel value, $Res Function(VariantModel) then) =
      _$VariantModelCopyWithImpl<$Res, VariantModel>;
  @useResult
  $Res call(
      {String id,
      String product,
      String title,
      String type,
      @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
      List<VariantItemModel> items});
}

/// @nodoc
class _$VariantModelCopyWithImpl<$Res, $Val extends VariantModel>
    implements $VariantModelCopyWith<$Res> {
  _$VariantModelCopyWithImpl(this._value, this._then);

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
              as List<VariantItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantModelCopyWith<$Res>
    implements $VariantModelCopyWith<$Res> {
  factory _$$_VariantModelCopyWith(
          _$_VariantModel value, $Res Function(_$_VariantModel) then) =
      __$$_VariantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String product,
      String title,
      String type,
      @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
      List<VariantItemModel> items});
}

/// @nodoc
class __$$_VariantModelCopyWithImpl<$Res>
    extends _$VariantModelCopyWithImpl<$Res, _$_VariantModel>
    implements _$$_VariantModelCopyWith<$Res> {
  __$$_VariantModelCopyWithImpl(
      _$_VariantModel _value, $Res Function(_$_VariantModel) _then)
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
    return _then(_$_VariantModel(
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
              as List<VariantItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantModel extends _VariantModel {
  const _$_VariantModel(
      {required this.id,
      required this.product,
      required this.title,
      required this.type,
      @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
      required final List<VariantItemModel> items})
      : _items = items,
        super._();

  factory _$_VariantModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantModelFromJson(json);

  @override
  final String id;
  @override
  final String product;
  @override
  final String title;
  @override
  final String type;
  final List<VariantItemModel> _items;
  @override
  @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
  List<VariantItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'VariantModel(id: $id, product: $product, title: $title, type: $type, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, product, title, type,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      __$$_VariantModelCopyWithImpl<_$_VariantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantModelToJson(
      this,
    );
  }
}

abstract class _VariantModel extends VariantModel {
  const factory _VariantModel(
      {required final String id,
      required final String product,
      required final String title,
      required final String type,
      @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
      required final List<VariantItemModel> items}) = _$_VariantModel;
  const _VariantModel._() : super._();

  factory _VariantModel.fromJson(Map<String, dynamic> json) =
      _$_VariantModel.fromJson;

  @override
  String get id;
  @override
  String get product;
  @override
  String get title;
  @override
  String get type;
  @override
  @JsonKey(name: 'expand', fromJson: _convertListOfVariantItem)
  List<VariantItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
