import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:elastico/app/features/comment/domain/usecases/add_comment.dart';
import 'package:elastico/app/features/comment/domain/usecases/delete_comment.dart';
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart';
import 'package:elastico/app/features/comment/domain/usecases/update_comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final GetProductComments _getProductComments;
  final AddComment _addComment;
  final UpdateComment _updateComment;
  final DeleteComment _deleteComment;

  CommentBloc(
    this._getProductComments,
    this._addComment,
    this._updateComment,
    this._deleteComment,
  ) : super(const _Initial()) {
    on<CommentEvent>(
      (events, emit) async => events.map(
        fetchProductComments: (event) async =>
            _fetchProductComments(event, emit),
        addComment: (event) async => _addUserComment(event, emit),
        updateComment: (event) async => _updateUserComment(event, emit),
        deleteComment: (event) async => _deleteUserComment(event, emit),
      ),
    );
  }

  Future<void> _fetchProductComments(
    _FetchProductComments event,
    Emitter<CommentState> emit,
  ) async {
    emit(const _Loading());
    final comments = await _getProductComments.call(event.productId);
    comments.fold(
      (failure) => emit(_Error(errorMessage: failure.message)),
      (response) => emit(_Loaded(comments: response)),
    );
  }

  Future<void> _addUserComment(
    _AddComment event,
    Emitter<CommentState> emit,
  ) async {
    emit(const _Loading());
    final params = AddCommentParams(
      userId: event.userId,
      productId: event.productId,
      text: event.text,
      rating: event.rating,
    );
    final result = await _addComment.call(params);
    result.fold(
      (failure) => emit(_Failed(
        actionType: ActionType.add,
        errorMessage: failure.message,
      )),
      (_) {
        emit(const _Success(actionType: ActionType.add));
        fetchProductComments(event.productId);
      },
    );
  }

  Future<void> _updateUserComment(
    _UpdateComment event,
    Emitter<CommentState> emit,
  ) async {
    emit(const _Loading());
    final params = UpdateCommentParams(
      commentId: event.comment.id,
      text: event.text,
      rating: event.rating,
    );
    final result = await _updateComment.call(params);
    result.fold(
      (failure) => emit(_Failed(
        actionType: ActionType.update,
        errorMessage: failure.message,
      )),
      (_) {
        emit(const _Success(actionType: ActionType.update));
        fetchProductComments(event.comment.product);
      },
    );
  }

  Future<void> _deleteUserComment(
    _DeleteComment event,
    Emitter<CommentState> emit,
  ) async {
    final result = await _deleteComment.call(event.comment.id);
    result.fold(
      (failure) => emit(_Failed(
        actionType: ActionType.delete,
        errorMessage: failure.message,
      )),
      (_) {
        emit(const _Success(actionType: ActionType.delete));
        fetchProductComments(event.comment.product);
      },
    );
  }

  void fetchProductComments(String productId) =>
      add(_FetchProductComments(productId: productId));

  void addUserComment({
    required String userId,
    required String productId,
    required String text,
    required double rating,
  }) =>
      add(_AddComment(
        userId: userId,
        productId: productId,
        text: text,
        rating: rating,
      ));

  void updateUserComment({
    required Comment comment,
    required String text,
    required double rating,
  }) =>
      add(_UpdateComment(
        comment: comment,
        text: text,
        rating: rating,
      ));

  void deleteUserComment(Comment comment) =>
      add(_DeleteComment(comment: comment));
}
