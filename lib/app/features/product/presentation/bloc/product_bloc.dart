import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/usecases/get_products.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProducts getProducts;

  ProductBloc({required this.getProducts}) : super(ProductInitial()) {
    on<FetchProducts>((event, emit) async {
      emit(ProductLoading());
      final products = await getProducts.call(event.filterSequence);
      products.fold(
        (failure) => emit(ProductError(errorMessage: failure.message)),
        (response) => emit(ProductLoaded(products: response)),
      );
    });
  }
}
