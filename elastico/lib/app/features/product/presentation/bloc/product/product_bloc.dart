import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProduct _getProduct;
  final GetProductVariants _getProductVariants;

  ProductBloc(
    this._getProduct,
    this._getProductVariants,
  ) : super(const _Initial()) {
    on<ProductEvent>(
      (events, emit) async => events.map(
        fetchProduct: (event) async => _fetchProduct(event, emit),
      ),
    );
  }

  Future<void> _fetchProduct(
    _FetchProduct event,
    Emitter<ProductState> emit,
  ) async {
    emit(const _Loading());
    final product = await _getProduct.call(event.productId);
    final productVariants = await _getProductVariants.call(event.productId);
    product.fold(
      (failure) => emit(_Error(errorMessage: failure.message)),
      (product) {
        productVariants.fold(
          (failure) => emit(_Error(errorMessage: failure.message)),
          (productVariants) =>
              emit(_Loaded(product: product, variants: productVariants)),
        );
      },
    );
  }

  void fetchProduct(String productId) =>
      add(_FetchProduct(productId: productId));
}
