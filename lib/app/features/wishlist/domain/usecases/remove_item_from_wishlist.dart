import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart';

class RemoveItemFromWishlist extends Usecase<void, String> {
  final WishlistRepository wishlistRepository;

  RemoveItemFromWishlist({required this.wishlistRepository});

  @override
  Future<Either<Failure, void>> call(params) async {
    return wishlistRepository.removeItemFromWishlist(params);
  }
}
