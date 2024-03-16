import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveFromWishlist implements Usecase<void, String> {
  final WishlistRepository _wishlistRepository;

  RemoveFromWishlist(this._wishlistRepository);

  @override
  Future<Either<Failure, void>> call(params) async =>
      _wishlistRepository.removeFromWishlist(params);
}
