// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterItemModel _$FilterItemModelFromJson(Map<String, dynamic> json) {
  return _FilterItemModel.fromJson(json);
}

/// @nodoc
mixin _$FilterItemModel {
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get filterSequence => throw _privateConstructorUsedError;
  String? get sortSequence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterItemModelCopyWith<FilterItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterItemModelCopyWith<$Res> {
  factory $FilterItemModelCopyWith(
          FilterItemModel value, $Res Function(FilterItemModel) then) =
      _$FilterItemModelCopyWithImpl<$Res, FilterItemModel>;
  @useResult
  $Res call(
      {String title,
      String type,
      String? filterSequence,
      String? sortSequence});
}

/// @nodoc
class _$FilterItemModelCopyWithImpl<$Res, $Val extends FilterItemModel>
    implements $FilterItemModelCopyWith<$Res> {
  _$FilterItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? filterSequence = freezed,
    Object? sortSequence = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      filterSequence: freezed == filterSequence
          ? _value.filterSequence
          : filterSequence // ignore: cast_nullable_to_non_nullable
              as String?,
      sortSequence: freezed == sortSequence
          ? _value.sortSequence
          : sortSequence // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterItemModelCopyWith<$Res>
    implements $FilterItemModelCopyWith<$Res> {
  factory _$$_FilterItemModelCopyWith(
          _$_FilterItemModel value, $Res Function(_$_FilterItemModel) then) =
      __$$_FilterItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String type,
      String? filterSequence,
      String? sortSequence});
}

/// @nodoc
class __$$_FilterItemModelCopyWithImpl<$Res>
    extends _$FilterItemModelCopyWithImpl<$Res, _$_FilterItemModel>
    implements _$$_FilterItemModelCopyWith<$Res> {
  __$$_FilterItemModelCopyWithImpl(
      _$_FilterItemModel _value, $Res Function(_$_FilterItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? filterSequence = freezed,
    Object? sortSequence = freezed,
  }) {
    return _then(_$_FilterItemModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      filterSequence: freezed == filterSequence
          ? _value.filterSequence
          : filterSequence // ignore: cast_nullable_to_non_nullable
              as String?,
      sortSequence: freezed == sortSequence
          ? _value.sortSequence
          : sortSequence // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterItemModel extends _FilterItemModel {
  const _$_FilterItemModel(
      {required this.title,
      required this.type,
      this.filterSequence,
      this.sortSequence})
      : super._();

  factory _$_FilterItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_FilterItemModelFromJson(json);

  @override
  final String title;
  @override
  final String type;
  @override
  final String? filterSequence;
  @override
  final String? sortSequence;

  @override
  String toString() {
    return 'FilterItemModel(title: $title, type: $type, filterSequence: $filterSequence, sortSequence: $sortSequence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterItemModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.filterSequence, filterSequence) ||
                other.filterSequence == filterSequence) &&
            (identical(other.sortSequence, sortSequence) ||
                other.sortSequence == sortSequence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, type, filterSequence, sortSequence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterItemModelCopyWith<_$_FilterItemModel> get copyWith =>
      __$$_FilterItemModelCopyWithImpl<_$_FilterItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterItemModelToJson(
      this,
    );
  }
}

abstract class _FilterItemModel extends FilterItemModel {
  const factory _FilterItemModel(
      {required final String title,
      required final String type,
      final String? filterSequence,
      final String? sortSequence}) = _$_FilterItemModel;
  const _FilterItemModel._() : super._();

  factory _FilterItemModel.fromJson(Map<String, dynamic> json) =
      _$_FilterItemModel.fromJson;

  @override
  String get title;
  @override
  String get type;
  @override
  String? get filterSequence;
  @override
  String? get sortSequence;
  @override
  @JsonKey(ignore: true)
  _$$_FilterItemModelCopyWith<_$_FilterItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
