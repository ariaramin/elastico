import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:elastico/app/features/search/domain/entities/search.dart';
import 'package:elastico/app/features/search/domain/usecases/search_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchProduct _searchProduct;
  int page = 1;

  SearchBloc(this._searchProduct) : super(const _Initial()) {
    on<SearchEvent>(
      (events, emit) async => events.map(
        search: (event) async => _search(event, emit),
      ),
      transformer: restartable(),
    );
  }

  Future<void> _search(
    _Search event,
    Emitter<SearchState> emit,
  ) async {
    emit(const _Loading());

    final params = SearchParams(page: page, query: event.query);
    final result = await _searchProduct.call(params);

    result.fold(
      (failure) => emit(_Error(errorMessage: failure.message)),
      (response) => emit(_Loaded(search: response)),
    );
  }

  void search(String query) => add(_Search(query: query));
}
