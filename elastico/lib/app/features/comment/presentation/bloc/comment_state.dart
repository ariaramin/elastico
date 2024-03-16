part of 'comment_bloc.dart';

enum ActionType { add, update, delete }

@freezed
abstract class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.loading() = _Loading;
  const factory CommentState.loaded({
    required List<Comment> comments,
  }) = _Loaded;
  const factory CommentState.error({
    required String errorMessage,
  }) = _Error;
  const factory CommentState.success({
    required ActionType actionType,
  }) = _Success;
  const factory CommentState.failed({
    required ActionType actionType,
    required String errorMessage,
  }) = _Failed;
}
