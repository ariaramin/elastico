import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:elastico/app/features/home/domain/entities/home_data.dart';
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WishlistBloc wishlistBloc;
  final GetHomeData getHomeData;

  HomeBloc({
    required this.wishlistBloc,
    required this.getHomeData,
  }) : super(const _Initial()) {
    on<HomeEvent>(
      (events, emit) async => events.map(
        homeInitialRequest: (event) async => _initialRequest(event, emit),
      ),
    );
  }

  void _initialRequest(
    _HomeInitialRequest event,
    Emitter<HomeState> emit,
  ) async {
    emit(const _Loading());
    final homeData = await getHomeData.call();
    homeData.fold(
      (failure) => emit(_Error(errorMessage: failure.message)),
      (response) {
        // Combine the lists to iterate through them once
        final allProducts = [
          ...response.discountedProducts,
          ...response.bestSellerProducts,
          ...response.newestProducts,
        ];

        // Update products in the wishlist
        _updateProductsInWishlist(allProducts);

        emit(_Loaded(homeData: response));
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

  void initialRequest() => add(const _HomeInitialRequest());
}
