import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart';
import 'package:elastico/app/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WishlistRepository)
class WishlistRepositoryImpl implements WishlistRepository {
  final WishlistDatasource _wishlistDatasource;

  WishlistRepositoryImpl(this._wishlistDatasource);

  @override
  Future<Either<Failure, List<WishlistItem>>> getWishlist() async {
    try {
      final wishlist = await _wishlistDatasource.getWishlist();
      return Right(wishlist.map((e) => e.toEntity()).toList());
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }

  @override
  Future<Either<Failure, void>> addToWishlist(WishlistItem item) async {
    try {
      await _wishlistDatasource
          .addToWishlist(WishlistItemModel.fromEntity(item));
      return const Right(null);
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromWishlist(String itemId) async {
    try {
      await _wishlistDatasource.removeFromWishlist(itemId);
      return const Right(null);
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }
}
