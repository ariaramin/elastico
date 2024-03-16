import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/add_to_wishlist.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/remove_from_wishlist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_status.dart';
part 'wishlist_bloc.freezed.dart';

@lazySingleton
class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final GetWishlist _getWishlistItems;
  final AddToWishlist _addToWishlist;
  final RemoveFromWishlist _removeFromWishlist;

  WishlistBloc(
    this._getWishlistItems,
    this._addToWishlist,
    this._removeFromWishlist,
  ) : super(WishlistState.initial()) {
    on<WishlistEvent>(
      (events, emit) async => events.map(
        getWishlist: (event) async => _getWishlist(event, emit),
        toggleWishlist: (event) async => _toggleWishlist(event, emit),
        updateWishlist: (event) async => _updateWishlist(event, emit),
      ),
    );
  }

  Future<void> _getWishlist(
    _GetWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(status: const WishlistStatus.loading()));
    final wishlist = await _getWishlistItems.call();
    wishlist.fold(
      (failure) => emit(
        state.copyWith(
          status: WishlistStatus.error(
            errorMessage: failure.message,
          ),
        ),
      ),
      (response) => emit(
        state.copyWith(
          status: WishlistStatus.loaded(wishlist: response),
          wishlist: response,
        ),
      ),
    );
  }

  Future<void> _toggleWishlist(
    _ToggleWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    final wishlistItem = WishlistItem(
      id: event.product.id,
      product: event.product,
    );

    List<WishlistItem> updatedWishlist = List.from(state.wishlist);

    // If the product is already in the wishlist, remove it
    if (updatedWishlist.any((element) => element.id == event.product.id)) {
      final result = await _removeFromWishlist.call(event.product.id);
      result.fold(
        (l) => null,
        (r) => updatedWishlist
            .removeWhere((element) => element.id == event.product.id),
      );
    } else {
      final result = await _addToWishlist.call(wishlistItem);
      result.fold(
        (l) => null,
        (r) => updatedWishlist.add(wishlistItem),
      );
    }

    emit(
      state.copyWith(
        status: const WishlistStatus.updated(),
        wishlist: updatedWishlist,
      ),
    );

    getWishlist();
  }

  Future<void> _updateWishlist(
    _UpdateWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    final wishlistItem = WishlistItem(
      id: event.product.id,
      product: event.product,
    );

    List<WishlistItem> updatedWishlist = List.from(state.wishlist);

    final result = await _addToWishlist.call(wishlistItem);

    result.fold(
      (l) => null,
      (r) => updatedWishlist.add(wishlistItem),
    );

    getWishlist();
  }

  void getWishlist() => add(const _GetWishlist());

  void toggleWishlist(Product product) => add(_ToggleWishlist(product));

  void updateWishlist(Product product) => add(_UpdateWishlist(product));
}
