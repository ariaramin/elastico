import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart';
import 'package:equatable/equatable.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final GetProductList getProducts;

  ProductListBloc({required this.getProducts}) : super(ProductListInitial()) {
    on<FetchProducts>((event, emit) async {
      emit(ProductListLoading());
      final products = await getProducts.call(event.filterSequence);
      products.fold(
        (failure) => emit(ProductListError(errorMessage: failure.message)),
        (response) => emit(ProductListLoaded(products: response)),
      );
    });
  }
}
