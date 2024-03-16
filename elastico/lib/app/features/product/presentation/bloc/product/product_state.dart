part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.loaded({
    required Product product,
    required List<Variant> variants,
  }) = _Loaded;
  const factory ProductState.error({
    required String errorMessage,
  }) = _Error;
}
