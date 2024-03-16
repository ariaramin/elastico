// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) fetchProductComments,
    required TResult Function(
            String userId, String productId, String text, double rating)
        addComment,
    required TResult Function(Comment comment, String text, double rating)
        updateComment,
    required TResult Function(Comment comment) deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? fetchProductComments,
    TResult? Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult? Function(Comment comment, String text, double rating)?
        updateComment,
    TResult? Function(Comment comment)? deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? fetchProductComments,
    TResult Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult Function(Comment comment, String text, double rating)?
        updateComment,
    TResult Function(Comment comment)? deleteComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductComments value) fetchProductComments,
    required TResult Function(_AddComment value) addComment,
    required TResult Function(_UpdateComment value) updateComment,
    required TResult Function(_DeleteComment value) deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductComments value)? fetchProductComments,
    TResult? Function(_AddComment value)? addComment,
    TResult? Function(_UpdateComment value)? updateComment,
    TResult? Function(_DeleteComment value)? deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductComments value)? fetchProductComments,
    TResult Function(_AddComment value)? addComment,
    TResult Function(_UpdateComment value)? updateComment,
    TResult Function(_DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEventCopyWith<$Res> {
  factory $CommentEventCopyWith(
          CommentEvent value, $Res Function(CommentEvent) then) =
      _$CommentEventCopyWithImpl<$Res, CommentEvent>;
}

/// @nodoc
class _$CommentEventCopyWithImpl<$Res, $Val extends CommentEvent>
    implements $CommentEventCopyWith<$Res> {
  _$CommentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProductCommentsImplCopyWith<$Res> {
  factory _$$FetchProductCommentsImplCopyWith(_$FetchProductCommentsImpl value,
          $Res Function(_$FetchProductCommentsImpl) then) =
      __$$FetchProductCommentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$FetchProductCommentsImplCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$FetchProductCommentsImpl>
    implements _$$FetchProductCommentsImplCopyWith<$Res> {
  __$$FetchProductCommentsImplCopyWithImpl(_$FetchProductCommentsImpl _value,
      $Res Function(_$FetchProductCommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$FetchProductCommentsImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchProductCommentsImpl implements _FetchProductComments {
  const _$FetchProductCommentsImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'CommentEvent.fetchProductComments(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductCommentsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductCommentsImplCopyWith<_$FetchProductCommentsImpl>
      get copyWith =>
          __$$FetchProductCommentsImplCopyWithImpl<_$FetchProductCommentsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) fetchProductComments,
    required TResult Function(
            String userId, String productId, String text, double rating)
        addComment,
    required TResult Function(Comment comment, String text, double rating)
        updateComment,
    required TResult Function(Comment comment) deleteComment,
  }) {
    return fetchProductComments(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? fetchProductComments,
    TResult? Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult? Function(Comment comment, String text, double rating)?
        updateComment,
    TResult? Function(Comment comment)? deleteComment,
  }) {
    return fetchProductComments?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? fetchProductComments,
    TResult Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult Function(Comment comment, String text, double rating)?
        updateComment,
    TResult Function(Comment comment)? deleteComment,
    required TResult orElse(),
  }) {
    if (fetchProductComments != null) {
      return fetchProductComments(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductComments value) fetchProductComments,
    required TResult Function(_AddComment value) addComment,
    required TResult Function(_UpdateComment value) updateComment,
    required TResult Function(_DeleteComment value) deleteComment,
  }) {
    return fetchProductComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductComments value)? fetchProductComments,
    TResult? Function(_AddComment value)? addComment,
    TResult? Function(_UpdateComment value)? updateComment,
    TResult? Function(_DeleteComment value)? deleteComment,
  }) {
    return fetchProductComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductComments value)? fetchProductComments,
    TResult Function(_AddComment value)? addComment,
    TResult Function(_UpdateComment value)? updateComment,
    TResult Function(_DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (fetchProductComments != null) {
      return fetchProductComments(this);
    }
    return orElse();
  }
}

abstract class _FetchProductComments implements CommentEvent {
  const factory _FetchProductComments({required final String productId}) =
      _$FetchProductCommentsImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$FetchProductCommentsImplCopyWith<_$FetchProductCommentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCommentImplCopyWith<$Res> {
  factory _$$AddCommentImplCopyWith(
          _$AddCommentImpl value, $Res Function(_$AddCommentImpl) then) =
      __$$AddCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String productId, String text, double rating});
}

/// @nodoc
class __$$AddCommentImplCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$AddCommentImpl>
    implements _$$AddCommentImplCopyWith<$Res> {
  __$$AddCommentImplCopyWithImpl(
      _$AddCommentImpl _value, $Res Function(_$AddCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? productId = null,
    Object? text = null,
    Object? rating = null,
  }) {
    return _then(_$AddCommentImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddCommentImpl implements _AddComment {
  const _$AddCommentImpl(
      {required this.userId,
      required this.productId,
      required this.text,
      required this.rating});

  @override
  final String userId;
  @override
  final String productId;
  @override
  final String text;
  @override
  final double rating;

  @override
  String toString() {
    return 'CommentEvent.addComment(userId: $userId, productId: $productId, text: $text, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, productId, text, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentImplCopyWith<_$AddCommentImpl> get copyWith =>
      __$$AddCommentImplCopyWithImpl<_$AddCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) fetchProductComments,
    required TResult Function(
            String userId, String productId, String text, double rating)
        addComment,
    required TResult Function(Comment comment, String text, double rating)
        updateComment,
    required TResult Function(Comment comment) deleteComment,
  }) {
    return addComment(userId, productId, text, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? fetchProductComments,
    TResult? Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult? Function(Comment comment, String text, double rating)?
        updateComment,
    TResult? Function(Comment comment)? deleteComment,
  }) {
    return addComment?.call(userId, productId, text, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? fetchProductComments,
    TResult Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult Function(Comment comment, String text, double rating)?
        updateComment,
    TResult Function(Comment comment)? deleteComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(userId, productId, text, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductComments value) fetchProductComments,
    required TResult Function(_AddComment value) addComment,
    required TResult Function(_UpdateComment value) updateComment,
    required TResult Function(_DeleteComment value) deleteComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductComments value)? fetchProductComments,
    TResult? Function(_AddComment value)? addComment,
    TResult? Function(_UpdateComment value)? updateComment,
    TResult? Function(_DeleteComment value)? deleteComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductComments value)? fetchProductComments,
    TResult Function(_AddComment value)? addComment,
    TResult Function(_UpdateComment value)? updateComment,
    TResult Function(_DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class _AddComment implements CommentEvent {
  const factory _AddComment(
      {required final String userId,
      required final String productId,
      required final String text,
      required final double rating}) = _$AddCommentImpl;

  String get userId;
  String get productId;
  String get text;
  double get rating;
  @JsonKey(ignore: true)
  _$$AddCommentImplCopyWith<_$AddCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCommentImplCopyWith<$Res> {
  factory _$$UpdateCommentImplCopyWith(
          _$UpdateCommentImpl value, $Res Function(_$UpdateCommentImpl) then) =
      __$$UpdateCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Comment comment, String text, double rating});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$UpdateCommentImplCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$UpdateCommentImpl>
    implements _$$UpdateCommentImplCopyWith<$Res> {
  __$$UpdateCommentImplCopyWithImpl(
      _$UpdateCommentImpl _value, $Res Function(_$UpdateCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? text = null,
    Object? rating = null,
  }) {
    return _then(_$UpdateCommentImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$UpdateCommentImpl implements _UpdateComment {
  const _$UpdateCommentImpl(
      {required this.comment, required this.text, required this.rating});

  @override
  final Comment comment;
  @override
  final String text;
  @override
  final double rating;

  @override
  String toString() {
    return 'CommentEvent.updateComment(comment: $comment, text: $text, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCommentImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment, text, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCommentImplCopyWith<_$UpdateCommentImpl> get copyWith =>
      __$$UpdateCommentImplCopyWithImpl<_$UpdateCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) fetchProductComments,
    required TResult Function(
            String userId, String productId, String text, double rating)
        addComment,
    required TResult Function(Comment comment, String text, double rating)
        updateComment,
    required TResult Function(Comment comment) deleteComment,
  }) {
    return updateComment(comment, text, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? fetchProductComments,
    TResult? Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult? Function(Comment comment, String text, double rating)?
        updateComment,
    TResult? Function(Comment comment)? deleteComment,
  }) {
    return updateComment?.call(comment, text, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? fetchProductComments,
    TResult Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult Function(Comment comment, String text, double rating)?
        updateComment,
    TResult Function(Comment comment)? deleteComment,
    required TResult orElse(),
  }) {
    if (updateComment != null) {
      return updateComment(comment, text, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductComments value) fetchProductComments,
    required TResult Function(_AddComment value) addComment,
    required TResult Function(_UpdateComment value) updateComment,
    required TResult Function(_DeleteComment value) deleteComment,
  }) {
    return updateComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductComments value)? fetchProductComments,
    TResult? Function(_AddComment value)? addComment,
    TResult? Function(_UpdateComment value)? updateComment,
    TResult? Function(_DeleteComment value)? deleteComment,
  }) {
    return updateComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductComments value)? fetchProductComments,
    TResult Function(_AddComment value)? addComment,
    TResult Function(_UpdateComment value)? updateComment,
    TResult Function(_DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (updateComment != null) {
      return updateComment(this);
    }
    return orElse();
  }
}

abstract class _UpdateComment implements CommentEvent {
  const factory _UpdateComment(
      {required final Comment comment,
      required final String text,
      required final double rating}) = _$UpdateCommentImpl;

  Comment get comment;
  String get text;
  double get rating;
  @JsonKey(ignore: true)
  _$$UpdateCommentImplCopyWith<_$UpdateCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommentImplCopyWith<$Res> {
  factory _$$DeleteCommentImplCopyWith(
          _$DeleteCommentImpl value, $Res Function(_$DeleteCommentImpl) then) =
      __$$DeleteCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Comment comment});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$DeleteCommentImplCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$DeleteCommentImpl>
    implements _$$DeleteCommentImplCopyWith<$Res> {
  __$$DeleteCommentImplCopyWithImpl(
      _$DeleteCommentImpl _value, $Res Function(_$DeleteCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$DeleteCommentImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$DeleteCommentImpl implements _DeleteComment {
  const _$DeleteCommentImpl({required this.comment});

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CommentEvent.deleteComment(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      __$$DeleteCommentImplCopyWithImpl<_$DeleteCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) fetchProductComments,
    required TResult Function(
            String userId, String productId, String text, double rating)
        addComment,
    required TResult Function(Comment comment, String text, double rating)
        updateComment,
    required TResult Function(Comment comment) deleteComment,
  }) {
    return deleteComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? fetchProductComments,
    TResult? Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult? Function(Comment comment, String text, double rating)?
        updateComment,
    TResult? Function(Comment comment)? deleteComment,
  }) {
    return deleteComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? fetchProductComments,
    TResult Function(
            String userId, String productId, String text, double rating)?
        addComment,
    TResult Function(Comment comment, String text, double rating)?
        updateComment,
    TResult Function(Comment comment)? deleteComment,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductComments value) fetchProductComments,
    required TResult Function(_AddComment value) addComment,
    required TResult Function(_UpdateComment value) updateComment,
    required TResult Function(_DeleteComment value) deleteComment,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductComments value)? fetchProductComments,
    TResult? Function(_AddComment value)? addComment,
    TResult? Function(_UpdateComment value)? updateComment,
    TResult? Function(_DeleteComment value)? deleteComment,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductComments value)? fetchProductComments,
    TResult Function(_AddComment value)? addComment,
    TResult Function(_UpdateComment value)? updateComment,
    TResult Function(_DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class _DeleteComment implements CommentEvent {
  const factory _DeleteComment({required final Comment comment}) =
      _$DeleteCommentImpl;

  Comment get comment;
  @JsonKey(ignore: true)
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(ActionType actionType) success,
    required TResult Function(ActionType actionType, String errorMessage)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Comment> comments)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(ActionType actionType)? success,
    TResult? Function(ActionType actionType, String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(ActionType actionType)? success,
    TResult Function(ActionType actionType, String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res, CommentState>;
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res, $Val extends CommentState>
    implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CommentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(ActionType actionType) success,
    required TResult Function(ActionType actionType, String errorMessage)
        failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Comment> comments)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(ActionType actionType)? success,
    TResult? Function(ActionType actionType, String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(ActionType actionType)? success,
    TResult Function(ActionType actionType, String errorMessage)? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CommentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(ActionType actionType) success,
    required TResult Function(ActionType actionType, String errorMessage)
        failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Comment> comments)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(ActionType actionType)? success,
    TResult? Function(ActionType actionType, String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(ActionType actionType)? success,
    TResult Function(ActionType actionType, String errorMessage)? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CommentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$LoadedImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Comment> comments})
      : _comments = comments;

  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentState.loaded(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(ActionType actionType) success,
    required TResult Function(ActionType actionType, String errorMessage)
        failed,
  }) {
    return loaded(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Comment> comments)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(ActionType actionType)? success,
    TResult? Function(ActionType actionType, String errorMessage)? failed,
  }) {
    return loaded?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(ActionType actionType)? success,
    TResult Function(ActionType actionType, String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CommentState {
  const factory _Loaded({required final List<Comment> comments}) = _$LoadedImpl;

  List<Comment> get comments;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CommentState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(ActionType actionType) success,
    required TResult Function(ActionType actionType, String errorMessage)
        failed,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Comment> comments)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(ActionType actionType)? success,
    TResult? Function(ActionType actionType, String errorMessage)? failed,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(ActionType actionType)? success,
    TResult Function(ActionType actionType, String errorMessage)? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CommentState {
  const factory _Error({required final String errorMessage}) = _$ErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionType actionType});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
  }) {
    return _then(_$SuccessImpl(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.actionType});

  @override
  final ActionType actionType;

  @override
  String toString() {
    return 'CommentState.success(actionType: $actionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(ActionType actionType) success,
    required TResult Function(ActionType actionType, String errorMessage)
        failed,
  }) {
    return success(actionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Comment> comments)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(ActionType actionType)? success,
    TResult? Function(ActionType actionType, String errorMessage)? failed,
  }) {
    return success?.call(actionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(ActionType actionType)? success,
    TResult Function(ActionType actionType, String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(actionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CommentState {
  const factory _Success({required final ActionType actionType}) =
      _$SuccessImpl;

  ActionType get actionType;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionType actionType, String errorMessage});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
    Object? errorMessage = null,
  }) {
    return _then(_$FailedImpl(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required this.actionType, required this.errorMessage});

  @override
  final ActionType actionType;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CommentState.failed(actionType: $actionType, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actionType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function(String errorMessage) error,
    required TResult Function(ActionType actionType) success,
    required TResult Function(ActionType actionType, String errorMessage)
        failed,
  }) {
    return failed(actionType, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Comment> comments)? loaded,
    TResult? Function(String errorMessage)? error,
    TResult? Function(ActionType actionType)? success,
    TResult? Function(ActionType actionType, String errorMessage)? failed,
  }) {
    return failed?.call(actionType, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function(String errorMessage)? error,
    TResult Function(ActionType actionType)? success,
    TResult Function(ActionType actionType, String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(actionType, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements CommentState {
  const factory _Failed(
      {required final ActionType actionType,
      required final String errorMessage}) = _$FailedImpl;

  ActionType get actionType;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
