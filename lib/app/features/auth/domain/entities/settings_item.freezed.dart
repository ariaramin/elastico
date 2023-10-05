// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsItem {
  String get title => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  SettingsItemType get type => throw _privateConstructorUsedError;
  List<String>? get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsItemCopyWith<SettingsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsItemCopyWith<$Res> {
  factory $SettingsItemCopyWith(
          SettingsItem value, $Res Function(SettingsItem) then) =
      _$SettingsItemCopyWithImpl<$Res, SettingsItem>;
  @useResult
  $Res call(
      {String title,
      IconData icon,
      SettingsItemType type,
      List<String>? options});
}

/// @nodoc
class _$SettingsItemCopyWithImpl<$Res, $Val extends SettingsItem>
    implements $SettingsItemCopyWith<$Res> {
  _$SettingsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? type = null,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SettingsItemType,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsItemCopyWith<$Res>
    implements $SettingsItemCopyWith<$Res> {
  factory _$$_SettingsItemCopyWith(
          _$_SettingsItem value, $Res Function(_$_SettingsItem) then) =
      __$$_SettingsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      IconData icon,
      SettingsItemType type,
      List<String>? options});
}

/// @nodoc
class __$$_SettingsItemCopyWithImpl<$Res>
    extends _$SettingsItemCopyWithImpl<$Res, _$_SettingsItem>
    implements _$$_SettingsItemCopyWith<$Res> {
  __$$_SettingsItemCopyWithImpl(
      _$_SettingsItem _value, $Res Function(_$_SettingsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? type = null,
    Object? options = freezed,
  }) {
    return _then(_$_SettingsItem(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SettingsItemType,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_SettingsItem implements _SettingsItem {
  const _$_SettingsItem(
      {required this.title,
      required this.icon,
      this.type = SettingsItemType.normal,
      final List<String>? options})
      : _options = options;

  @override
  final String title;
  @override
  final IconData icon;
  @override
  @JsonKey()
  final SettingsItemType type;
  final List<String>? _options;
  @override
  List<String>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SettingsItem(title: $title, icon: $icon, type: $type, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon, type,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsItemCopyWith<_$_SettingsItem> get copyWith =>
      __$$_SettingsItemCopyWithImpl<_$_SettingsItem>(this, _$identity);
}

abstract class _SettingsItem implements SettingsItem {
  const factory _SettingsItem(
      {required final String title,
      required final IconData icon,
      final SettingsItemType type,
      final List<String>? options}) = _$_SettingsItem;

  @override
  String get title;
  @override
  IconData get icon;
  @override
  SettingsItemType get type;
  @override
  List<String>? get options;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsItemCopyWith<_$_SettingsItem> get copyWith =>
      throw _privateConstructorUsedError;
}
