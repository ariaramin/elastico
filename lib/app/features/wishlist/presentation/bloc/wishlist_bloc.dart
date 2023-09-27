import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/add_item_to_wishlist.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist_items.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/remove_item_from_wishlist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_status.dart';
part 'wishlist_bloc.freezed.dart';

@lazySingleton
class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final GetWishlistItems getWishlistItems;
  final AddItemToWishlist addItemToWishlist;
  final RemoveItemFromWishlist removeItemFromWishlist;

  WishlistBloc({
    required this.getWishlistItems,
    required this.addItemToWishlist,
    required this.removeItemFromWishlist,
  }) : super(WishlistState.initial()) {
    on<WishlistEvent>(
      (events, emit) async => events.map(
        getWishlist: (event) async => _getWishlist(event, emit),
        toggleWishlist: (event) async => _toggleWishlist(event, emit),
        updateWishlist: (event) async => _updateWishlist(event, emit),
      ),
    );
  }

  void _getWishlist(
    _GetWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(status: const WishlistStatus.loading()));

    final wishlist = await getWishlistItems.call();

    wishlist.fold(
      (failure) => emit(
        state.copyWith(
          status: WishlistStatus.error(
            errorMessage: failure.message,
          ),
        ),
      ),
      (response) {
        emit(
          state.copyWith(
            status: WishlistStatus.loaded(wishlist: response),
            wishlist: response,
          ),
        );
      },
    );
  }

  void _toggleWishlist(
    _ToggleWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    final wishlistItem = WishlistItem(
      id: event.product.id,
      product: event.product,
    );

    List<WishlistItem> updatedWishlist = List.from(state.wishlist);

    if (updatedWishlist.any((element) => element.id == event.product.id)) {
      final result = await removeItemFromWishlist.call(event.product.id);
      result.fold(
        (l) => null,
        (r) => updatedWishlist
            .removeWhere((element) => element.id == event.product.id),
      );
    } else {
      final result = await addItemToWishlist.call(wishlistItem);
      result.fold(
        (l) => null,
        (r) => updatedWishlist.add(
          WishlistItemModel.fromEntity(wishlistItem),
        ),
      );
    }

    emit(
      state.copyWith(
        status: const WishlistStatus.updated(),
        wishlist: updatedWishlist,
      ),
    );

    add(const _GetWishlist());
  }

  void _updateWishlist(
    _UpdateWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    final wishlistItem = WishlistItem(
      id: event.product.id,
      product: event.product,
    );

    List<WishlistItem> updatedWishlist = List.from(state.wishlist);

    final result = await addItemToWishlist.call(wishlistItem);

    result.fold(
      (l) => null,
      (r) => updatedWishlist.add(
        WishlistItemModel.fromEntity(wishlistItem),
      ),
    );

    add(const _GetWishlist());
  }

  void getWishlist() => add(const WishlistEvent.getWishlist());

  void toggleWishlist(Product product) =>
      add(WishlistEvent.toggleWishlist(product: product));

  void updateWishlist(Product product) =>
      add(WishlistEvent.updateWishlist(product: product));
}
