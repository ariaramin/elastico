part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.fetchProductComments({
    required String productId,
  }) = _FetchProductComments;
  const factory CommentEvent.addComment({
    required String userId,
    required String productId,
    required String text,
    required double rating,
  }) = _AddComment;
  const factory CommentEvent.updateComment({
    required Comment comment,
    required String text,
    required double rating,
  }) = _UpdateComment;
  const factory CommentEvent.deleteComment({
    required Comment comment,
  }) = _DeleteComment;
}
