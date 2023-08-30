part of 'comment_bloc.dart';

sealed class CommentEvent extends Equatable {
  const CommentEvent();

  @override
  List<Object> get props => [];
}

class FetchProductComments extends CommentEvent {
  final String productId;

  const FetchProductComments({required this.productId});
}
