part of 'wishlist_bloc.dart';

@freezed
class WishlistStatus with _$WishlistStatus {
  const factory WishlistStatus.initial() = _WishlistInitial;
  const factory WishlistStatus.loading() = _WishlistLoading;
  const factory WishlistStatus.loaded({
    required List<WishlistItem> wishlist,
  }) = _WishlistLoaded;
  const factory WishlistStatus.updated() = _WishlistUpdated;
  const factory WishlistStatus.error({
    required String errorMessage,
  }) = _WishlistError;
}
