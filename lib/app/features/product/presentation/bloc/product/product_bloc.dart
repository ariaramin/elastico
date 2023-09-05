import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product.dart';
import 'package:elastico/app/features/product/domain/usecases/get_product_variants.dart';
import 'package:equatable/equatable.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProduct getProduct;
  final GetProductVariants getProductVariants;

  ProductBloc({
    required this.getProduct,
    required this.getProductVariants,
  }) : super(ProductInitial()) {
    on<FetchProduct>((event, emit) async {
      emit(ProductLoading());
      final product = await getProduct.call(event.productId);
      final productVariants = await getProductVariants.call(event.productId);
      product.fold(
        (failure) => emit(ProductError(errorMessage: failure.message)),
        (product) {
          productVariants.fold(
            (failure) => emit(ProductError(errorMessage: failure.message)),
            (productVariants) => emit(
                ProductLoaded(product: product, variants: productVariants)),
          );
        },
      );
    });
  }
}
