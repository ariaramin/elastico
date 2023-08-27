part of 'product_bloc.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final Product product;
  final List<Variant> variants;

  const ProductLoaded({
    required this.product,
    required this.variants,
  });
}

class ProductError extends ProductState {
  final String errorMessage;

  const ProductError({required this.errorMessage});
}
