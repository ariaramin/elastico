part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded({
    required List<Category> categories,
  }) = _Loaded;
  const factory CategoryState.error({
    required String message,
  }) = _Error;
}
