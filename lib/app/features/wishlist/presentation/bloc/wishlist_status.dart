part of 'wishlist_bloc.dart';

sealed class WishlistStatus extends Equatable {
  @override
  List<Object> get props => [];
}

class WishlistInitial extends WishlistStatus {}

class WishlistLoading extends WishlistStatus {}

class WishlistLoaded extends WishlistStatus {
  final List<WishlistItem> wishlistItems;

  WishlistLoaded({required this.wishlistItems});

  @override
  List<Object> get props => [wishlistItems];
}

class WishlistUpdated extends WishlistStatus {}

class WishlistError extends WishlistStatus {
  final String errorMessage;

  WishlistError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
