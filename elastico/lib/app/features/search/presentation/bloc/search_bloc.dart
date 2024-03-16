import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:elastico/app/features/search/domain/entities/filter.dart';
import 'package:elastico/app/features/search/domain/entities/filter_item.dart';
import 'package:elastico/app/features/search/domain/entities/search.dart';
import 'package:elastico/app/features/search/domain/usecases/get_filters.dart';
import 'package:elastico/app/features/search/domain/usecases/search_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchProduct _searchProduct;
  final GetFilters _getFilters;

  SearchBloc(
    this._searchProduct,
    this._getFilters,
  ) : super(const _Initial()) {
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

    final params = SearchParams(
      page: 1,
      query: event.query,
      filter: event.filters?.map((e) => e.filterSequence).toList().join(' || '),
      sort: event.sort,
    );
    final result = await _searchProduct.call(params);
    final filters = await _getFilters.call();
    result.fold(
      (failure) => emit(_Error(errorMessage: failure.message)),
      (searchResponse) {
        filters.fold(
          (failure) => emit(_Error(errorMessage: failure.message)),
          (response) => emit(_Loaded(
            search: searchResponse,
            filters: response,
          )),
        );
      },
    );
  }

  void search(
    String query, {
    List<FilterItem>? filters,
    String? sort,
  }) =>
      add(_Search(
        query: query,
        filters: filters,
        sort: sort,
      ));
}
