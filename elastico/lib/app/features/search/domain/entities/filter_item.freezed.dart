// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterItem {
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get filterSequence => throw _privateConstructorUsedError;
  String? get sortSequence => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterItemCopyWith<FilterItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterItemCopyWith<$Res> {
  factory $FilterItemCopyWith(
          FilterItem value, $Res Function(FilterItem) then) =
      _$FilterItemCopyWithImpl<$Res, FilterItem>;
  @useResult
  $Res call(
      {String title,
      String type,
      String? filterSequence,
      String? sortSequence});
}

/// @nodoc
class _$FilterItemCopyWithImpl<$Res, $Val extends FilterItem>
    implements $FilterItemCopyWith<$Res> {
  _$FilterItemCopyWithImpl(this._value, this._then);

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
abstract class _$$FilterItemImplCopyWith<$Res>
    implements $FilterItemCopyWith<$Res> {
  factory _$$FilterItemImplCopyWith(
          _$FilterItemImpl value, $Res Function(_$FilterItemImpl) then) =
      __$$FilterItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String type,
      String? filterSequence,
      String? sortSequence});
}

/// @nodoc
class __$$FilterItemImplCopyWithImpl<$Res>
    extends _$FilterItemCopyWithImpl<$Res, _$FilterItemImpl>
    implements _$$FilterItemImplCopyWith<$Res> {
  __$$FilterItemImplCopyWithImpl(
      _$FilterItemImpl _value, $Res Function(_$FilterItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? filterSequence = freezed,
    Object? sortSequence = freezed,
  }) {
    return _then(_$FilterItemImpl(
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

class _$FilterItemImpl implements _FilterItem {
  const _$FilterItemImpl(
      {required this.title,
      required this.type,
      this.filterSequence,
      this.sortSequence});

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
    return 'FilterItem(title: $title, type: $type, filterSequence: $filterSequence, sortSequence: $sortSequence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.filterSequence, filterSequence) ||
                other.filterSequence == filterSequence) &&
            (identical(other.sortSequence, sortSequence) ||
                other.sortSequence == sortSequence));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, type, filterSequence, sortSequence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterItemImplCopyWith<_$FilterItemImpl> get copyWith =>
      __$$FilterItemImplCopyWithImpl<_$FilterItemImpl>(this, _$identity);
}

abstract class _FilterItem implements FilterItem {
  const factory _FilterItem(
      {required final String title,
      required final String type,
      final String? filterSequence,
      final String? sortSequence}) = _$FilterItemImpl;

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
  _$$FilterItemImplCopyWith<_$FilterItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
