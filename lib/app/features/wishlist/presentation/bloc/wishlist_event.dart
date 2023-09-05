part of 'wishlist_bloc.dart';

sealed class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class GetWishlist extends WishlistEvent {
  @override
  List<Object> get props => [];
}

class ToggleWishlist extends WishlistEvent {
  final Product product;

  const ToggleWishlist({required this.product});

  @override
  List<Object> get props => [product];
}

class UpdateWishlist extends WishlistEvent {
  final Product product;

  const UpdateWishlist({required this.product});

  @override
  List<Object> get props => [product];
}
