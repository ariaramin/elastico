import 'package:elastico/app/core/helpers/hive_helper.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';

sealed class WishlistDatasource {
  Future<List<WishlistItemModel>> getWishlistItems();

  Future<void> addItemToWishlist(WishlistItemModel item);

  Future<void> removeItemFromWishlist(String itemId);
}

class WishlistDatasourceImpl extends WishlistDatasource {
  final HiveHelper hiveHelper;

  WishlistDatasourceImpl({required this.hiveHelper});

  @override
  Future<List<WishlistItemModel>> getWishlistItems() async {
    return hiveHelper
        .read<WishlistItem>(Constants.wishlistKey)
        .map((e) => WishlistItemModel.fromEntity(e))
        .toList();
  }

  @override
  Future<void> addItemToWishlist(WishlistItemModel item) async {
    await hiveHelper.write<WishlistItem>(Constants.wishlistKey, item.id, item);
  }

  @override
  Future<void> removeItemFromWishlist(String itemId) async {
    await hiveHelper.delete<WishlistItem>(Constants.wishlistKey, itemId);
  }
}
