import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';

abstract class WishlistRepository {
  Future<Either<Failure, List<WishlistItem>>> getWishlist();

  Future<Either<Failure, void>> addToWishlist(WishlistItem item);

  Future<Either<Failure, void>> removeFromWishlist(String itemId);
}
