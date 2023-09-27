// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishlist,
    required TResult Function(Product product) toggleWishlist,
    required TResult Function(Product product) updateWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishlist,
    TResult? Function(Product product)? toggleWishlist,
    TResult? Function(Product product)? updateWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishlist,
    TResult Function(Product product)? toggleWishlist,
    TResult Function(Product product)? updateWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishlist value) getWishlist,
    required TResult Function(_ToggleWishlist value) toggleWishlist,
    required TResult Function(_UpdateWishlist value) updateWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishlist value)? getWishlist,
    TResult? Function(_ToggleWishlist value)? toggleWishlist,
    TResult? Function(_UpdateWishlist value)? updateWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishlist value)? getWishlist,
    TResult Function(_ToggleWishlist value)? toggleWishlist,
    TResult Function(_UpdateWishlist value)? updateWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetWishlistCopyWith<$Res> {
  factory _$$_GetWishlistCopyWith(
          _$_GetWishlist value, $Res Function(_$_GetWishlist) then) =
      __$$_GetWishlistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetWishlistCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_GetWishlist>
    implements _$$_GetWishlistCopyWith<$Res> {
  __$$_GetWishlistCopyWithImpl(
      _$_GetWishlist _value, $Res Function(_$_GetWishlist) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetWishlist implements _GetWishlist {
  const _$_GetWishlist();

  @override
  String toString() {
    return 'WishlistEvent.getWishlist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetWishlist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishlist,
    required TResult Function(Product product) toggleWishlist,
    required TResult Function(Product product) updateWishlist,
  }) {
    return getWishlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishlist,
    TResult? Function(Product product)? toggleWishlist,
    TResult? Function(Product product)? updateWishlist,
  }) {
    return getWishlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishlist,
    TResult Function(Product product)? toggleWishlist,
    TResult Function(Product product)? updateWishlist,
    required TResult orElse(),
  }) {
    if (getWishlist != null) {
      return getWishlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishlist value) getWishlist,
    required TResult Function(_ToggleWishlist value) toggleWishlist,
    required TResult Function(_UpdateWishlist value) updateWishlist,
  }) {
    return getWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishlist value)? getWishlist,
    TResult? Function(_ToggleWishlist value)? toggleWishlist,
    TResult? Function(_UpdateWishlist value)? updateWishlist,
  }) {
    return getWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishlist value)? getWishlist,
    TResult Function(_ToggleWishlist value)? toggleWishlist,
    TResult Function(_UpdateWishlist value)? updateWishlist,
    required TResult orElse(),
  }) {
    if (getWishlist != null) {
      return getWishlist(this);
    }
    return orElse();
  }
}

abstract class _GetWishlist implements WishlistEvent {
  const factory _GetWishlist() = _$_GetWishlist;
}

/// @nodoc
abstract class _$$_ToggleWishlistCopyWith<$Res> {
  factory _$$_ToggleWishlistCopyWith(
          _$_ToggleWishlist value, $Res Function(_$_ToggleWishlist) then) =
      __$$_ToggleWishlistCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ToggleWishlistCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_ToggleWishlist>
    implements _$$_ToggleWishlistCopyWith<$Res> {
  __$$_ToggleWishlistCopyWithImpl(
      _$_ToggleWishlist _value, $Res Function(_$_ToggleWishlist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_ToggleWishlist(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_ToggleWishlist implements _ToggleWishlist {
  const _$_ToggleWishlist({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'WishlistEvent.toggleWishlist(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleWishlist &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleWishlistCopyWith<_$_ToggleWishlist> get copyWith =>
      __$$_ToggleWishlistCopyWithImpl<_$_ToggleWishlist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishlist,
    required TResult Function(Product product) toggleWishlist,
    required TResult Function(Product product) updateWishlist,
  }) {
    return toggleWishlist(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishlist,
    TResult? Function(Product product)? toggleWishlist,
    TResult? Function(Product product)? updateWishlist,
  }) {
    return toggleWishlist?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishlist,
    TResult Function(Product product)? toggleWishlist,
    TResult Function(Product product)? updateWishlist,
    required TResult orElse(),
  }) {
    if (toggleWishlist != null) {
      return toggleWishlist(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishlist value) getWishlist,
    required TResult Function(_ToggleWishlist value) toggleWishlist,
    required TResult Function(_UpdateWishlist value) updateWishlist,
  }) {
    return toggleWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishlist value)? getWishlist,
    TResult? Function(_ToggleWishlist value)? toggleWishlist,
    TResult? Function(_UpdateWishlist value)? updateWishlist,
  }) {
    return toggleWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishlist value)? getWishlist,
    TResult Function(_ToggleWishlist value)? toggleWishlist,
    TResult Function(_UpdateWishlist value)? updateWishlist,
    required TResult orElse(),
  }) {
    if (toggleWishlist != null) {
      return toggleWishlist(this);
    }
    return orElse();
  }
}

abstract class _ToggleWishlist implements WishlistEvent {
  const factory _ToggleWishlist({required final Product product}) =
      _$_ToggleWishlist;

  Product get product;
  @JsonKey(ignore: true)
  _$$_ToggleWishlistCopyWith<_$_ToggleWishlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateWishlistCopyWith<$Res> {
  factory _$$_UpdateWishlistCopyWith(
          _$_UpdateWishlist value, $Res Function(_$_UpdateWishlist) then) =
      __$$_UpdateWishlistCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_UpdateWishlistCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$_UpdateWishlist>
    implements _$$_UpdateWishlistCopyWith<$Res> {
  __$$_UpdateWishlistCopyWithImpl(
      _$_UpdateWishlist _value, $Res Function(_$_UpdateWishlist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_UpdateWishlist(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_UpdateWishlist implements _UpdateWishlist {
  const _$_UpdateWishlist({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'WishlistEvent.updateWishlist(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateWishlist &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateWishlistCopyWith<_$_UpdateWishlist> get copyWith =>
      __$$_UpdateWishlistCopyWithImpl<_$_UpdateWishlist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishlist,
    required TResult Function(Product product) toggleWishlist,
    required TResult Function(Product product) updateWishlist,
  }) {
    return updateWishlist(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishlist,
    TResult? Function(Product product)? toggleWishlist,
    TResult? Function(Product product)? updateWishlist,
  }) {
    return updateWishlist?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishlist,
    TResult Function(Product product)? toggleWishlist,
    TResult Function(Product product)? updateWishlist,
    required TResult orElse(),
  }) {
    if (updateWishlist != null) {
      return updateWishlist(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishlist value) getWishlist,
    required TResult Function(_ToggleWishlist value) toggleWishlist,
    required TResult Function(_UpdateWishlist value) updateWishlist,
  }) {
    return updateWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishlist value)? getWishlist,
    TResult? Function(_ToggleWishlist value)? toggleWishlist,
    TResult? Function(_UpdateWishlist value)? updateWishlist,
  }) {
    return updateWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishlist value)? getWishlist,
    TResult Function(_ToggleWishlist value)? toggleWishlist,
    TResult Function(_UpdateWishlist value)? updateWishlist,
    required TResult orElse(),
  }) {
    if (updateWishlist != null) {
      return updateWishlist(this);
    }
    return orElse();
  }
}

abstract class _UpdateWishlist implements WishlistEvent {
  const factory _UpdateWishlist({required final Product product}) =
      _$_UpdateWishlist;

  Product get product;
  @JsonKey(ignore: true)
  _$$_UpdateWishlistCopyWith<_$_UpdateWishlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  WishlistStatus get status => throw _privateConstructorUsedError;
  List<WishlistItem> get wishlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call({WishlistStatus status, List<WishlistItem> wishlist});

  $WishlistStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? wishlist = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WishlistStatus,
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<WishlistItem>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WishlistStatusCopyWith<$Res> get status {
    return $WishlistStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WishlistStateCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$_WishlistStateCopyWith(
          _$_WishlistState value, $Res Function(_$_WishlistState) then) =
      __$$_WishlistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WishlistStatus status, List<WishlistItem> wishlist});

  @override
  $WishlistStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_WishlistStateCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$_WishlistState>
    implements _$$_WishlistStateCopyWith<$Res> {
  __$$_WishlistStateCopyWithImpl(
      _$_WishlistState _value, $Res Function(_$_WishlistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? wishlist = null,
  }) {
    return _then(_$_WishlistState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WishlistStatus,
      wishlist: null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<WishlistItem>,
    ));
  }
}

/// @nodoc

class _$_WishlistState implements _WishlistState {
  const _$_WishlistState(
      {required this.status, required final List<WishlistItem> wishlist})
      : _wishlist = wishlist;

  @override
  final WishlistStatus status;
  final List<WishlistItem> _wishlist;
  @override
  List<WishlistItem> get wishlist {
    if (_wishlist is EqualUnmodifiableListView) return _wishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlist);
  }

  @override
  String toString() {
    return 'WishlistState(status: $status, wishlist: $wishlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_wishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistStateCopyWith<_$_WishlistState> get copyWith =>
      __$$_WishlistStateCopyWithImpl<_$_WishlistState>(this, _$identity);
}

abstract class _WishlistState implements WishlistState {
  const factory _WishlistState(
      {required final WishlistStatus status,
      required final List<WishlistItem> wishlist}) = _$_WishlistState;

  @override
  WishlistStatus get status;
  @override
  List<WishlistItem> get wishlist;
  @override
  @JsonKey(ignore: true)
  _$$_WishlistStateCopyWith<_$_WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishlistItem> wishlist) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishlistItem> wishlist)? loaded,
    TResult? Function()? updated,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishlistItem> wishlist)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistInitial value) initial,
    required TResult Function(_WishlistLoading value) loading,
    required TResult Function(_WishlistLoaded value) loaded,
    required TResult Function(_WishlistUpdated value) updated,
    required TResult Function(_WishlistError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistInitial value)? initial,
    TResult? Function(_WishlistLoading value)? loading,
    TResult? Function(_WishlistLoaded value)? loaded,
    TResult? Function(_WishlistUpdated value)? updated,
    TResult? Function(_WishlistError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistInitial value)? initial,
    TResult Function(_WishlistLoading value)? loading,
    TResult Function(_WishlistLoaded value)? loaded,
    TResult Function(_WishlistUpdated value)? updated,
    TResult Function(_WishlistError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStatusCopyWith<$Res> {
  factory $WishlistStatusCopyWith(
          WishlistStatus value, $Res Function(WishlistStatus) then) =
      _$WishlistStatusCopyWithImpl<$Res, WishlistStatus>;
}

/// @nodoc
class _$WishlistStatusCopyWithImpl<$Res, $Val extends WishlistStatus>
    implements $WishlistStatusCopyWith<$Res> {
  _$WishlistStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WishlistInitialCopyWith<$Res> {
  factory _$$_WishlistInitialCopyWith(
          _$_WishlistInitial value, $Res Function(_$_WishlistInitial) then) =
      __$$_WishlistInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WishlistInitialCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$_WishlistInitial>
    implements _$$_WishlistInitialCopyWith<$Res> {
  __$$_WishlistInitialCopyWithImpl(
      _$_WishlistInitial _value, $Res Function(_$_WishlistInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WishlistInitial implements _WishlistInitial {
  const _$_WishlistInitial();

  @override
  String toString() {
    return 'WishlistStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WishlistInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishlistItem> wishlist) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishlistItem> wishlist)? loaded,
    TResult? Function()? updated,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishlistItem> wishlist)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistInitial value) initial,
    required TResult Function(_WishlistLoading value) loading,
    required TResult Function(_WishlistLoaded value) loaded,
    required TResult Function(_WishlistUpdated value) updated,
    required TResult Function(_WishlistError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistInitial value)? initial,
    TResult? Function(_WishlistLoading value)? loading,
    TResult? Function(_WishlistLoaded value)? loaded,
    TResult? Function(_WishlistUpdated value)? updated,
    TResult? Function(_WishlistError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistInitial value)? initial,
    TResult Function(_WishlistLoading value)? loading,
    TResult Function(_WishlistLoaded value)? loaded,
    TResult Function(_WishlistUpdated value)? updated,
    TResult Function(_WishlistError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WishlistInitial implements WishlistStatus {
  const factory _WishlistInitial() = _$_WishlistInitial;
}

/// @nodoc
abstract class _$$_WishlistLoadingCopyWith<$Res> {
  factory _$$_WishlistLoadingCopyWith(
          _$_WishlistLoading value, $Res Function(_$_WishlistLoading) then) =
      __$$_WishlistLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WishlistLoadingCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$_WishlistLoading>
    implements _$$_WishlistLoadingCopyWith<$Res> {
  __$$_WishlistLoadingCopyWithImpl(
      _$_WishlistLoading _value, $Res Function(_$_WishlistLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WishlistLoading implements _WishlistLoading {
  const _$_WishlistLoading();

  @override
  String toString() {
    return 'WishlistStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WishlistLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishlistItem> wishlist) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishlistItem> wishlist)? loaded,
    TResult? Function()? updated,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishlistItem> wishlist)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistInitial value) initial,
    required TResult Function(_WishlistLoading value) loading,
    required TResult Function(_WishlistLoaded value) loaded,
    required TResult Function(_WishlistUpdated value) updated,
    required TResult Function(_WishlistError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistInitial value)? initial,
    TResult? Function(_WishlistLoading value)? loading,
    TResult? Function(_WishlistLoaded value)? loaded,
    TResult? Function(_WishlistUpdated value)? updated,
    TResult? Function(_WishlistError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistInitial value)? initial,
    TResult Function(_WishlistLoading value)? loading,
    TResult Function(_WishlistLoaded value)? loaded,
    TResult Function(_WishlistUpdated value)? updated,
    TResult Function(_WishlistError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WishlistLoading implements WishlistStatus {
  const factory _WishlistLoading() = _$_WishlistLoading;
}

/// @nodoc
abstract class _$$_WishlistLoadedCopyWith<$Res> {
  factory _$$_WishlistLoadedCopyWith(
          _$_WishlistLoaded value, $Res Function(_$_WishlistLoaded) then) =
      __$$_WishlistLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WishlistItem> wishlist});
}

/// @nodoc
class __$$_WishlistLoadedCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$_WishlistLoaded>
    implements _$$_WishlistLoadedCopyWith<$Res> {
  __$$_WishlistLoadedCopyWithImpl(
      _$_WishlistLoaded _value, $Res Function(_$_WishlistLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
  }) {
    return _then(_$_WishlistLoaded(
      wishlist: null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<WishlistItem>,
    ));
  }
}

/// @nodoc

class _$_WishlistLoaded implements _WishlistLoaded {
  const _$_WishlistLoaded({required final List<WishlistItem> wishlist})
      : _wishlist = wishlist;

  final List<WishlistItem> _wishlist;
  @override
  List<WishlistItem> get wishlist {
    if (_wishlist is EqualUnmodifiableListView) return _wishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlist);
  }

  @override
  String toString() {
    return 'WishlistStatus.loaded(wishlist: $wishlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistLoaded &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistLoadedCopyWith<_$_WishlistLoaded> get copyWith =>
      __$$_WishlistLoadedCopyWithImpl<_$_WishlistLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishlistItem> wishlist) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(wishlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishlistItem> wishlist)? loaded,
    TResult? Function()? updated,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(wishlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishlistItem> wishlist)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(wishlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistInitial value) initial,
    required TResult Function(_WishlistLoading value) loading,
    required TResult Function(_WishlistLoaded value) loaded,
    required TResult Function(_WishlistUpdated value) updated,
    required TResult Function(_WishlistError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistInitial value)? initial,
    TResult? Function(_WishlistLoading value)? loading,
    TResult? Function(_WishlistLoaded value)? loaded,
    TResult? Function(_WishlistUpdated value)? updated,
    TResult? Function(_WishlistError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistInitial value)? initial,
    TResult Function(_WishlistLoading value)? loading,
    TResult Function(_WishlistLoaded value)? loaded,
    TResult Function(_WishlistUpdated value)? updated,
    TResult Function(_WishlistError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WishlistLoaded implements WishlistStatus {
  const factory _WishlistLoaded({required final List<WishlistItem> wishlist}) =
      _$_WishlistLoaded;

  List<WishlistItem> get wishlist;
  @JsonKey(ignore: true)
  _$$_WishlistLoadedCopyWith<_$_WishlistLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WishlistUpdatedCopyWith<$Res> {
  factory _$$_WishlistUpdatedCopyWith(
          _$_WishlistUpdated value, $Res Function(_$_WishlistUpdated) then) =
      __$$_WishlistUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WishlistUpdatedCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$_WishlistUpdated>
    implements _$$_WishlistUpdatedCopyWith<$Res> {
  __$$_WishlistUpdatedCopyWithImpl(
      _$_WishlistUpdated _value, $Res Function(_$_WishlistUpdated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WishlistUpdated implements _WishlistUpdated {
  const _$_WishlistUpdated();

  @override
  String toString() {
    return 'WishlistStatus.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WishlistUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishlistItem> wishlist) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishlistItem> wishlist)? loaded,
    TResult? Function()? updated,
    TResult? Function(String errorMessage)? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishlistItem> wishlist)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistInitial value) initial,
    required TResult Function(_WishlistLoading value) loading,
    required TResult Function(_WishlistLoaded value) loaded,
    required TResult Function(_WishlistUpdated value) updated,
    required TResult Function(_WishlistError value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistInitial value)? initial,
    TResult? Function(_WishlistLoading value)? loading,
    TResult? Function(_WishlistLoaded value)? loaded,
    TResult? Function(_WishlistUpdated value)? updated,
    TResult? Function(_WishlistError value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistInitial value)? initial,
    TResult Function(_WishlistLoading value)? loading,
    TResult Function(_WishlistLoaded value)? loaded,
    TResult Function(_WishlistUpdated value)? updated,
    TResult Function(_WishlistError value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _WishlistUpdated implements WishlistStatus {
  const factory _WishlistUpdated() = _$_WishlistUpdated;
}

/// @nodoc
abstract class _$$_WishlistErrorCopyWith<$Res> {
  factory _$$_WishlistErrorCopyWith(
          _$_WishlistError value, $Res Function(_$_WishlistError) then) =
      __$$_WishlistErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_WishlistErrorCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$_WishlistError>
    implements _$$_WishlistErrorCopyWith<$Res> {
  __$$_WishlistErrorCopyWithImpl(
      _$_WishlistError _value, $Res Function(_$_WishlistError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_WishlistError(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WishlistError implements _WishlistError {
  const _$_WishlistError({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'WishlistStatus.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistErrorCopyWith<_$_WishlistError> get copyWith =>
      __$$_WishlistErrorCopyWithImpl<_$_WishlistError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WishlistItem> wishlist) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WishlistItem> wishlist)? loaded,
    TResult? Function()? updated,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WishlistItem> wishlist)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WishlistInitial value) initial,
    required TResult Function(_WishlistLoading value) loading,
    required TResult Function(_WishlistLoaded value) loaded,
    required TResult Function(_WishlistUpdated value) updated,
    required TResult Function(_WishlistError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WishlistInitial value)? initial,
    TResult? Function(_WishlistLoading value)? loading,
    TResult? Function(_WishlistLoaded value)? loaded,
    TResult? Function(_WishlistUpdated value)? updated,
    TResult? Function(_WishlistError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WishlistInitial value)? initial,
    TResult Function(_WishlistLoading value)? loading,
    TResult Function(_WishlistLoaded value)? loaded,
    TResult Function(_WishlistUpdated value)? updated,
    TResult Function(_WishlistError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WishlistError implements WishlistStatus {
  const factory _WishlistError({required final String errorMessage}) =
      _$_WishlistError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_WishlistErrorCopyWith<_$_WishlistError> get copyWith =>
      throw _privateConstructorUsedError;
}
