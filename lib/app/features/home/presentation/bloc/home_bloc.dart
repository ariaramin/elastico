import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:elastico/app/features/home/domain/entities/home_data.dart';
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WishlistBloc wishlistBloc;
  final GetHomeData getHomeData;

  HomeBloc({
    required this.wishlistBloc,
    required this.getHomeData,
  }) : super(HomeInitial()) {
    on<HomeInitialRequest>(_initialRequest);
  }

  void _initialRequest(
    HomeInitialRequest event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());
    final homeData = await getHomeData.call();
    homeData.fold(
      (failure) => emit(HomeError(errorMessage: failure.message)),
      (response) {
        // Combine the lists to iterate through them once
        final allProducts = [
          ...response.discountedProducts,
          ...response.bestSellerProducts,
          ...response.newestProducts,
        ];

        // Update products in the wishlist
        _updateProductsInWishlist(allProducts);

        emit(HomeLoaded(homeData: response));
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
