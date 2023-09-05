import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final WishlistBloc wishlistBloc;
  final GetProductList getProducts;

  ProductListBloc({
    required this.wishlistBloc,
    required this.getProducts,
  }) : super(ProductListInitial()) {
    on<FetchProducts>(_fetchProducts);
  }

  void _fetchProducts(
    FetchProducts event,
    Emitter<ProductListState> emit,
  ) async {
    emit(ProductListLoading());
    final products = await getProducts.call(event.filterSequence);
    products.fold(
      (failure) => emit(ProductListError(errorMessage: failure.message)),
      (response) {
        _updateProductsInWishlist(response);
        emit(ProductListLoaded(products: response));
      },
    );
  }

  void _updateProductsInWishlist(List<Product> products) {
    final wishlistIds =
        wishlistBloc.state.wishlist.map((item) => item.id).toSet();

    for (final product in products) {
      if (wishlistIds.contains(product.id)) {
        wishlistBloc.add(UpdateWishlist(product: product));
      }
    }
  }
}
