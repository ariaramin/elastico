import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/wishlist/data/data_sources/wishlist_datasource.dart';
import 'package:elastico/app/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:elastico/app/features/wishlist/domain/repositories/wishlist_repository.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WishlistRepository)
class WishlistRepositoryImpl extends WishlistRepository {
  final WishlistDatasource wishlistDatasource;

  WishlistRepositoryImpl({required this.wishlistDatasource});

  @override
  Future<Either<Failure, List<WishlistItem>>> getWishlistItems() async {
    try {
      final wishlist = await wishlistDatasource.getWishlistItems();
      return Right(wishlist);
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }

  @override
  Future<Either<Failure, void>> addItemToWishlist(WishlistItem item) async {
    try {
      await wishlistDatasource
          .addItemToWishlist(WishlistItemModel.fromEntity(item));
      return const Right(null);
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }

  @override
  Future<Either<Failure, void>> removeItemFromWishlist(String itemId) async {
    try {
      await wishlistDatasource.removeItemFromWishlist(itemId);
      return const Right(null);
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }
}
