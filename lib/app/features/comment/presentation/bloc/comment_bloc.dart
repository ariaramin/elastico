import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:elastico/app/features/comment/domain/usecases/get_product_comments.dart';
import 'package:equatable/equatable.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final GetProductComments getProductComments;

  CommentBloc({required this.getProductComments}) : super(CommentInitial()) {
    on<FetchProductComments>((event, emit) async {
      emit(CommentLoading());
      final comments = await getProductComments.call(event.productId);
      comments.fold(
        (failure) => emit(CommentError(errorMessage: failure.message)),
        (response) => emit(CommentLoaded(comments: response)),
      );
    });
  }
}
