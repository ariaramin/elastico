part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search({
    required String query,
    List<FilterItem>? filters,
    String? sort,
  }) = _Search;
}
