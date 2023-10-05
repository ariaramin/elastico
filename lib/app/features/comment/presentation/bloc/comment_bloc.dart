import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final GetProductComments _getProductComments;

  CommentBloc(this._getProductComments) : super(const _Initial()) {
    on<CommentEvent>(
      (events, emit) async => events.map(
        fetchProductComments: (event) async =>
            _fetchProductComments(event, emit),
      ),
    );
  }

  void _fetchProductComments(
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

  void fetchProductComments(String productId) =>
      add(_FetchProductComments(productId: productId));
}
