import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product_list.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';
part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final WishlistBloc wishlistBloc;
  final GetProductList getProducts;

  ProductListBloc({
    required this.wishlistBloc,
    required this.getProducts,
  }) : super(const _Initial()) {
    on<ProductListEvent>(
      (events, emit) async => events.map(
        fetchProducts: (event) async => _fetchProducts(event, emit),
      ),
    );
  }

  void _fetchProducts(
    _FetchProducts event,
    Emitter<ProductListState> emit,
  ) async {
    emit(const _Loading());
    final products = await getProducts.call(event.filterSequence);
    products.fold(
      (failure) => emit(_Error(errorMessage: failure.message)),
      (response) {
        _updateProductsInWishlist(response);
        emit(_Loaded(products: response));
      },
    );
  }

  void _updateProductsInWishlist(List<Product> products) {
    final wishlistIds =
        wishlistBloc.state.wishlist.map((item) => item.id).toSet();

    for (final product in products) {
      if (wishlistIds.contains(product.id)) {
        wishlistBloc.updateWishlist(product);
      }
    }
  }

  void fetchProducts(String filterSequence) =>
      add(_FetchProducts(filterSequence: filterSequence));
}
