import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart';

class AddItemToWishlist extends Usecase<void, WishlistItem> {
  final WishlistRepository wishlistRepository;

  AddItemToWishlist({required this.wishlistRepository});

  @override
  Future<Either<Failure, void>> call(params) async {
    return wishlistRepository.addItemToWishlist(params);
  }
}
