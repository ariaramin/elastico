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
  final GetProduct getProduct;
  final GetProductVariants getProductVariants;

  ProductBloc({
    required this.getProduct,
    required this.getProductVariants,
  }) : super(const _Initial()) {
    on<ProductEvent>(
      (events, emit) async => events.map(
        fetchProduct: (event) async => _fetchProduct(event, emit),
      ),
    );
  }

  void _fetchProduct(
    _FetchProduct event,
    Emitter<ProductState> emit,
  ) async {
    emit(const _Loading());
    final product = await getProduct.call(event.productId);
    final productVariants = await getProductVariants.call(event.productId);
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
      add(ProductEvent.fetchProduct(productId: productId));
}
