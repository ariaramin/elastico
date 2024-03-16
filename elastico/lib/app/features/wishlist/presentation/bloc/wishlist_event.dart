part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.getWishlist() = _GetWishlist;
  const factory WishlistEvent.toggleWishlist(Product product) = _ToggleWishlist;
  const factory WishlistEvent.updateWishlist(Product product) = _UpdateWishlist;
}
