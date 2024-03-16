part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState({
    required WishlistStatus status,
    required List<WishlistItem> wishlist,
  }) = _WishlistState;

  factory WishlistState.initial() => const _WishlistState(
        status: WishlistStatus.initial(),
        wishlist: [],
      );
}
