import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddToWishlist implements Usecase<void, WishlistItem> {
  final WishlistRepository _wishlistRepository;

  AddToWishlist(this._wishlistRepository);

  @override
  Future<Either<Failure, void>> call(params) async =>
      _wishlistRepository.addToWishlist(params);
}
