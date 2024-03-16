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
abstract class _$$GetWishlistImplCopyWith<$Res> {
  factory _$$GetWishlistImplCopyWith(
          _$GetWishlistImpl value, $Res Function(_$GetWishlistImpl) then) =
      __$$GetWishlistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$GetWishlistImpl>
    implements _$$GetWishlistImplCopyWith<$Res> {
  __$$GetWishlistImplCopyWithImpl(
      _$GetWishlistImpl _value, $Res Function(_$GetWishlistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWishlistImpl implements _GetWishlist {
  const _$GetWishlistImpl();

  @override
  String toString() {
    return 'WishlistEvent.getWishlist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWishlistImpl);
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
  const factory _GetWishlist() = _$GetWishlistImpl;
}

/// @nodoc
abstract class _$$ToggleWishlistImplCopyWith<$Res> {
  factory _$$ToggleWishlistImplCopyWith(_$ToggleWishlistImpl value,
          $Res Function(_$ToggleWishlistImpl) then) =
      __$$ToggleWishlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ToggleWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$ToggleWishlistImpl>
    implements _$$ToggleWishlistImplCopyWith<$Res> {
  __$$ToggleWishlistImplCopyWithImpl(
      _$ToggleWishlistImpl _value, $Res Function(_$ToggleWishlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ToggleWishlistImpl(
      null == product
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

class _$ToggleWishlistImpl implements _ToggleWishlist {
  const _$ToggleWishlistImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'WishlistEvent.toggleWishlist(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleWishlistImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleWishlistImplCopyWith<_$ToggleWishlistImpl> get copyWith =>
      __$$ToggleWishlistImplCopyWithImpl<_$ToggleWishlistImpl>(
          this, _$identity);

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
  const factory _ToggleWishlist(final Product product) = _$ToggleWishlistImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$ToggleWishlistImplCopyWith<_$ToggleWishlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateWishlistImplCopyWith<$Res> {
  factory _$$UpdateWishlistImplCopyWith(_$UpdateWishlistImpl value,
          $Res Function(_$UpdateWishlistImpl) then) =
      __$$UpdateWishlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$UpdateWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$UpdateWishlistImpl>
    implements _$$UpdateWishlistImplCopyWith<$Res> {
  __$$UpdateWishlistImplCopyWithImpl(
      _$UpdateWishlistImpl _value, $Res Function(_$UpdateWishlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$UpdateWishlistImpl(
      null == product
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

class _$UpdateWishlistImpl implements _UpdateWishlist {
  const _$UpdateWishlistImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'WishlistEvent.updateWishlist(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWishlistImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWishlistImplCopyWith<_$UpdateWishlistImpl> get copyWith =>
      __$$UpdateWishlistImplCopyWithImpl<_$UpdateWishlistImpl>(
          this, _$identity);

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
  const factory _UpdateWishlist(final Product product) = _$UpdateWishlistImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$UpdateWishlistImplCopyWith<_$UpdateWishlistImpl> get copyWith =>
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
abstract class _$$WishlistStateImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$WishlistStateImplCopyWith(
          _$WishlistStateImpl value, $Res Function(_$WishlistStateImpl) then) =
      __$$WishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WishlistStatus status, List<WishlistItem> wishlist});

  @override
  $WishlistStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$WishlistStateImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$WishlistStateImpl>
    implements _$$WishlistStateImplCopyWith<$Res> {
  __$$WishlistStateImplCopyWithImpl(
      _$WishlistStateImpl _value, $Res Function(_$WishlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? wishlist = null,
  }) {
    return _then(_$WishlistStateImpl(
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

class _$WishlistStateImpl implements _WishlistState {
  const _$WishlistStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_wishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      __$$WishlistStateImplCopyWithImpl<_$WishlistStateImpl>(this, _$identity);
}

abstract class _WishlistState implements WishlistState {
  const factory _WishlistState(
      {required final WishlistStatus status,
      required final List<WishlistItem> wishlist}) = _$WishlistStateImpl;

  @override
  WishlistStatus get status;
  @override
  List<WishlistItem> get wishlist;
  @override
  @JsonKey(ignore: true)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
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
abstract class _$$WishlistInitialImplCopyWith<$Res> {
  factory _$$WishlistInitialImplCopyWith(_$WishlistInitialImpl value,
          $Res Function(_$WishlistInitialImpl) then) =
      __$$WishlistInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WishlistInitialImplCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$WishlistInitialImpl>
    implements _$$WishlistInitialImplCopyWith<$Res> {
  __$$WishlistInitialImplCopyWithImpl(
      _$WishlistInitialImpl _value, $Res Function(_$WishlistInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WishlistInitialImpl implements _WishlistInitial {
  const _$WishlistInitialImpl();

  @override
  String toString() {
    return 'WishlistStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WishlistInitialImpl);
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
  const factory _WishlistInitial() = _$WishlistInitialImpl;
}

/// @nodoc
abstract class _$$WishlistLoadingImplCopyWith<$Res> {
  factory _$$WishlistLoadingImplCopyWith(_$WishlistLoadingImpl value,
          $Res Function(_$WishlistLoadingImpl) then) =
      __$$WishlistLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WishlistLoadingImplCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$WishlistLoadingImpl>
    implements _$$WishlistLoadingImplCopyWith<$Res> {
  __$$WishlistLoadingImplCopyWithImpl(
      _$WishlistLoadingImpl _value, $Res Function(_$WishlistLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WishlistLoadingImpl implements _WishlistLoading {
  const _$WishlistLoadingImpl();

  @override
  String toString() {
    return 'WishlistStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WishlistLoadingImpl);
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
  const factory _WishlistLoading() = _$WishlistLoadingImpl;
}

/// @nodoc
abstract class _$$WishlistLoadedImplCopyWith<$Res> {
  factory _$$WishlistLoadedImplCopyWith(_$WishlistLoadedImpl value,
          $Res Function(_$WishlistLoadedImpl) then) =
      __$$WishlistLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WishlistItem> wishlist});
}

/// @nodoc
class __$$WishlistLoadedImplCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$WishlistLoadedImpl>
    implements _$$WishlistLoadedImplCopyWith<$Res> {
  __$$WishlistLoadedImplCopyWithImpl(
      _$WishlistLoadedImpl _value, $Res Function(_$WishlistLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
  }) {
    return _then(_$WishlistLoadedImpl(
      wishlist: null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<WishlistItem>,
    ));
  }
}

/// @nodoc

class _$WishlistLoadedImpl implements _WishlistLoaded {
  const _$WishlistLoadedImpl({required final List<WishlistItem> wishlist})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistLoadedImpl &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistLoadedImplCopyWith<_$WishlistLoadedImpl> get copyWith =>
      __$$WishlistLoadedImplCopyWithImpl<_$WishlistLoadedImpl>(
          this, _$identity);

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
      _$WishlistLoadedImpl;

  List<WishlistItem> get wishlist;
  @JsonKey(ignore: true)
  _$$WishlistLoadedImplCopyWith<_$WishlistLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WishlistUpdatedImplCopyWith<$Res> {
  factory _$$WishlistUpdatedImplCopyWith(_$WishlistUpdatedImpl value,
          $Res Function(_$WishlistUpdatedImpl) then) =
      __$$WishlistUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WishlistUpdatedImplCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$WishlistUpdatedImpl>
    implements _$$WishlistUpdatedImplCopyWith<$Res> {
  __$$WishlistUpdatedImplCopyWithImpl(
      _$WishlistUpdatedImpl _value, $Res Function(_$WishlistUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WishlistUpdatedImpl implements _WishlistUpdated {
  const _$WishlistUpdatedImpl();

  @override
  String toString() {
    return 'WishlistStatus.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WishlistUpdatedImpl);
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
  const factory _WishlistUpdated() = _$WishlistUpdatedImpl;
}

/// @nodoc
abstract class _$$WishlistErrorImplCopyWith<$Res> {
  factory _$$WishlistErrorImplCopyWith(
          _$WishlistErrorImpl value, $Res Function(_$WishlistErrorImpl) then) =
      __$$WishlistErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$WishlistErrorImplCopyWithImpl<$Res>
    extends _$WishlistStatusCopyWithImpl<$Res, _$WishlistErrorImpl>
    implements _$$WishlistErrorImplCopyWith<$Res> {
  __$$WishlistErrorImplCopyWithImpl(
      _$WishlistErrorImpl _value, $Res Function(_$WishlistErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$WishlistErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WishlistErrorImpl implements _WishlistError {
  const _$WishlistErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'WishlistStatus.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistErrorImplCopyWith<_$WishlistErrorImpl> get copyWith =>
      __$$WishlistErrorImplCopyWithImpl<_$WishlistErrorImpl>(this, _$identity);

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
      _$WishlistErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$WishlistErrorImplCopyWith<_$WishlistErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
