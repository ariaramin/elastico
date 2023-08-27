part of 'product_list_bloc.dart';

sealed class ProductListState extends Equatable {
  const ProductListState();

  @override
  List<Object> get props => [];
}

class ProductListInitial extends ProductListState {}

class ProductListLoading extends ProductListState {}

class ProductListLoaded extends ProductListState {
  final List<Product> products;

  const ProductListLoaded({required this.products});
}

class ProductListError extends ProductListState {
  final String errorMessage;

  const ProductListError({required this.errorMessage});
}
