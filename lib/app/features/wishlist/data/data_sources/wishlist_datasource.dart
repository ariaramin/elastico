import 'package:elastico/app/core/helpers/auth_helper.dart';
import 'package:elastico/app/core/helpers/hive_helper.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:elastico/app/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:injectable/injectable.dart';

sealed class WishlistDatasource {
  Future<List<WishlistItemModel>> getWishlistItems();
  Future<void> addItemToWishlist(WishlistItemModel item);
  Future<void> removeItemFromWishlist(String itemId);
}

@Injectable(as: WishlistDatasource)
class WishlistDatasourceImpl extends WishlistDatasource {
  final HiveHelper _hiveHelper;
  final AuthHelper _authHelper;

  WishlistDatasourceImpl(this._hiveHelper, this._authHelper);

  Future<User> getCurrentUser() async => _authHelper.currentUser;

  @override
  Future<List<WishlistItemModel>> getWishlistItems() async {
    final currentUser = await getCurrentUser();
    final wishlistItems = await _hiveHelper.read<WishlistItem>(currentUser.id);
    return wishlistItems.map((e) => WishlistItemModel.fromEntity(e)).toList();
  }

  @override
  Future<void> addItemToWishlist(WishlistItemModel item) async {
    final currentUser = await getCurrentUser();
    await _hiveHelper.write<WishlistItem>(currentUser.id, item.id, item);
  }

  @override
  Future<void> removeItemFromWishlist(String itemId) async {
    final currentUser = await getCurrentUser();
    await _hiveHelper.delete<WishlistItem>(currentUser.id, itemId);
  }
}
