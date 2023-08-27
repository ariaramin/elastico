part of 'product_list_bloc.dart';

sealed class ProductListEvent extends Equatable {
  const ProductListEvent();

  @override
  List<Object> get props => [];
}

class FetchProducts extends ProductListEvent {
  final String filterSequence;

  const FetchProducts({required this.filterSequence});
}
