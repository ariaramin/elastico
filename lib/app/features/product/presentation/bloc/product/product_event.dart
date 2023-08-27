part of 'product_bloc.dart';

sealed class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class FetchProduct extends ProductEvent {
  final String productId;

  const FetchProduct({required this.productId});
}
