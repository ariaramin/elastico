import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/add_item_to_wishlist.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/get_wishlist_items.dart';
import 'package:elastico/app/features/wishlist/domain/usecases/remove_item_from_wishlist.dart';
import 'package:equatable/equatable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_status.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final GetWishlistItems getWishlistItems;
  final AddItemToWishlist addItemToWishlist;
  final RemoveItemFromWishlist removeItemFromWishlist;

  WishlistBloc({
    required this.getWishlistItems,
    required this.addItemToWishlist,
    required this.removeItemFromWishlist,
  }) : super(WishlistState(status: WishlistInitial(), wishlist: const [])) {
    on<GetWishlist>(_getWishlist);
    on<ToggleWishlist>(_toggleWishlist);
    on<UpdateWishlist>(_updateWishlist);
  }

  void _getWishlist(
    GetWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    emit(state.copyWith(newStatus: WishlistLoading()));

    final wishlist = await getWishlistItems.call();

    wishlist.fold(
      (failure) => emit(
        state.copyWith(
          newStatus: WishlistError(
            errorMessage: failure.message,
          ),
        ),
      ),
      (response) {
        emit(
          state.copyWith(
            newStatus: WishlistLoaded(wishlistItems: response),
            newWishlist: response,
          ),
        );
      },
    );
  }

  void _toggleWishlist(
    ToggleWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    final wishlistItem = WishlistItem(
      id: event.product.id,
      product: event.product,
    );

    if (state.wishlist.any((element) => element.id == event.product.id)) {
      final result = await removeItemFromWishlist.call(event.product.id);

      result.fold(
        (l) => null,
        (r) => state.wishlist
            .removeWhere((element) => element.id == event.product.id),
      );
    } else {
      final result = await addItemToWishlist.call(wishlistItem);

      result.fold(
        (l) => null,
        (r) => state.wishlist.add(
          WishlistItemModel.fromEntity(wishlistItem),
        ),
      );
    }

    emit(
      state.copyWith(
        newStatus: WishlistUpdated(),
        newWishlist: [...state.wishlist],
      ),
    );

    add(GetWishlist());
  }

  void _updateWishlist(
    UpdateWishlist event,
    Emitter<WishlistState> emit,
  ) async {
    final wishlistItem = WishlistItem(
      id: event.product.id,
      product: event.product,
    );

    final result = await addItemToWishlist.call(wishlistItem);

    result.fold(
      (l) => null,
      (r) => state.wishlist.add(
        WishlistItemModel.fromEntity(wishlistItem),
      ),
    );

    add(GetWishlist());
  }
}
