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
abstract class _$$_FetchProductCommentsCopyWith<$Res> {
  factory _$$_FetchProductCommentsCopyWith(_$_FetchProductComments value,
          $Res Function(_$_FetchProductComments) then) =
      __$$_FetchProductCommentsCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$_FetchProductCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$_FetchProductComments>
    implements _$$_FetchProductCommentsCopyWith<$Res> {
  __$$_FetchProductCommentsCopyWithImpl(_$_FetchProductComments _value,
      $Res Function(_$_FetchProductComments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$_FetchProductComments(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchProductComments implements _FetchProductComments {
  const _$_FetchProductComments({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'CommentEvent.fetchProductComments(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchProductComments &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchProductCommentsCopyWith<_$_FetchProductComments> get copyWith =>
      __$$_FetchProductCommentsCopyWithImpl<_$_FetchProductComments>(
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
      _$_FetchProductComments;

  String get productId;
  @JsonKey(ignore: true)
  _$$_FetchProductCommentsCopyWith<_$_FetchProductComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCommentCopyWith<$Res> {
  factory _$$_AddCommentCopyWith(
          _$_AddComment value, $Res Function(_$_AddComment) then) =
      __$$_AddCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String productId, String text, double rating});
}

/// @nodoc
class __$$_AddCommentCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$_AddComment>
    implements _$$_AddCommentCopyWith<$Res> {
  __$$_AddCommentCopyWithImpl(
      _$_AddComment _value, $Res Function(_$_AddComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? productId = null,
    Object? text = null,
    Object? rating = null,
  }) {
    return _then(_$_AddComment(
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

class _$_AddComment implements _AddComment {
  const _$_AddComment(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddComment &&
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
  _$$_AddCommentCopyWith<_$_AddComment> get copyWith =>
      __$$_AddCommentCopyWithImpl<_$_AddComment>(this, _$identity);

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
      required final double rating}) = _$_AddComment;

  String get userId;
  String get productId;
  String get text;
  double get rating;
  @JsonKey(ignore: true)
  _$$_AddCommentCopyWith<_$_AddComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCommentCopyWith<$Res> {
  factory _$$_UpdateCommentCopyWith(
          _$_UpdateComment value, $Res Function(_$_UpdateComment) then) =
      __$$_UpdateCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({Comment comment, String text, double rating});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$_UpdateCommentCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$_UpdateComment>
    implements _$$_UpdateCommentCopyWith<$Res> {
  __$$_UpdateCommentCopyWithImpl(
      _$_UpdateComment _value, $Res Function(_$_UpdateComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? text = null,
    Object? rating = null,
  }) {
    return _then(_$_UpdateComment(
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

class _$_UpdateComment implements _UpdateComment {
  const _$_UpdateComment(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateComment &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment, text, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCommentCopyWith<_$_UpdateComment> get copyWith =>
      __$$_UpdateCommentCopyWithImpl<_$_UpdateComment>(this, _$identity);

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
      required final double rating}) = _$_UpdateComment;

  Comment get comment;
  String get text;
  double get rating;
  @JsonKey(ignore: true)
  _$$_UpdateCommentCopyWith<_$_UpdateComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCommentCopyWith<$Res> {
  factory _$$_DeleteCommentCopyWith(
          _$_DeleteComment value, $Res Function(_$_DeleteComment) then) =
      __$$_DeleteCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({Comment comment});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$_DeleteCommentCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res, _$_DeleteComment>
    implements _$$_DeleteCommentCopyWith<$Res> {
  __$$_DeleteCommentCopyWithImpl(
      _$_DeleteComment _value, $Res Function(_$_DeleteComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$_DeleteComment(
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

class _$_DeleteComment implements _DeleteComment {
  const _$_DeleteComment({required this.comment});

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CommentEvent.deleteComment(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteComment &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCommentCopyWith<_$_DeleteComment> get copyWith =>
      __$$_DeleteCommentCopyWithImpl<_$_DeleteComment>(this, _$identity);

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
      _$_DeleteComment;

  Comment get comment;
  @JsonKey(ignore: true)
  _$$_DeleteCommentCopyWith<_$_DeleteComment> get copyWith =>
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CommentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CommentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
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
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$_Loaded(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<Comment> comments})
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

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
  const factory _Loaded({required final List<Comment> comments}) = _$_Loaded;

  List<Comment> get comments;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_Error(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CommentState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

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
  const factory _Error({required final String errorMessage}) = _$_Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionType actionType});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
  }) {
    return _then(_$_Success(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.actionType});

  @override
  final ActionType actionType;

  @override
  String toString() {
    return 'CommentState.success(actionType: $actionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

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
  const factory _Success({required final ActionType actionType}) = _$_Success;

  ActionType get actionType;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionType actionType, String errorMessage});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_Failed(
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

class _$_Failed implements _Failed {
  const _$_Failed({required this.actionType, required this.errorMessage});

  @override
  final ActionType actionType;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CommentState.failed(actionType: $actionType, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
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
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

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
      required final String errorMessage}) = _$_Failed;

  ActionType get actionType;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
