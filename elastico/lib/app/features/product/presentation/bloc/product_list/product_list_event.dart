part of 'product_list_bloc.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.fetchProducts({
    required String filterSequence,
  }) = _FetchProducts;
}
