import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:elastico/app/features/category/domain/usecases/get_main_categories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetMainCategories _getMainCategories;

  CategoryBloc(this._getMainCategories) : super(const _Initial()) {
    on<CategoryEvent>(
      (events, emit) async => events.map(
        fetchMainCategories: (event) => _fetchMainCategories(event, emit),
      ),
    );
  }

  Future<void> _fetchMainCategories(
    _FetchMainCategories event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const _Loading());
    final categories = await _getMainCategories.call();
    categories.fold(
      (failure) => emit(_Error(message: failure.message)),
      (response) => emit(_Loaded(categories: response)),
    );
  }

  void fetchCategory() => add(const _FetchMainCategories());
}
