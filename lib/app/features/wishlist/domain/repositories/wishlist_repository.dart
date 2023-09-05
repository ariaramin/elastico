import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';

abstract class WishlistRepository {
  Future<Either<Failure, List<WishlistItem>>> getWishlistItems();

  Future<Either<Failure, void>> addItemToWishlist(WishlistItem item);

  Future<Either<Failure, void>> removeItemFromWishlist(String itemId);
}
