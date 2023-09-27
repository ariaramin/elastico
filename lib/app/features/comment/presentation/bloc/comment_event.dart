part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.fetchProductComments({
    required String productId,
  }) = _FetchProductComments;
}
