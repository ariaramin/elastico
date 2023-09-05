part of 'wishlist_bloc.dart';

class WishlistState extends Equatable {
  final WishlistStatus status;
  final List<WishlistItem> wishlist;

  const WishlistState({
    required this.status,
    required this.wishlist,
  });

  WishlistState copyWith({
    WishlistStatus? newStatus,
    List<WishlistItem>? newWishlist,
  }) {
    return WishlistState(
      status: newStatus ?? status,
      wishlist: newWishlist ?? wishlist,
    );
  }

  @override
  List<Object> get props => [status, wishlist];
}
