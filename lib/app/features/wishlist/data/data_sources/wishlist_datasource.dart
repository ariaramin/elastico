import 'package:elastico/app/core/helpers/auth_helper.dart';
import 'package:elastico/app/core/helpers/hive_helper.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:elastico/app/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:injectable/injectable.dart';

sealed class WishlistDatasource {
  Future<List<WishlistItemModel>> getWishlist();

  Future<void> addToWishlist(WishlistItemModel item);

  Future<void> removeFromWishlist(String itemId);
}

@Injectable(as: WishlistDatasource)
class WishlistDatasourceImpl implements WishlistDatasource {
  final HiveHelper _hiveHelper;
  final AuthHelper _authHelper;

  WishlistDatasourceImpl(this._hiveHelper, this._authHelper);

  Future<User> getCurrentUser() async => _authHelper.currentUser;

  @override
  Future<List<WishlistItemModel>> getWishlist() async {
    final currentUser = await getCurrentUser();
    return await _hiveHelper
        .read<WishlistItemModel>('${currentUser.id}-wishlist');
  }

  @override
  Future<void> addToWishlist(WishlistItemModel item) async {
    final currentUser = await getCurrentUser();
    await _hiveHelper.write<WishlistItemModel>(
      '${currentUser.id}-wishlist',
      item.id,
      item,
    );
  }

  @override
  Future<void> removeFromWishlist(String itemId) async {
    final currentUser = await getCurrentUser();
    await _hiveHelper.delete<WishlistItemModel>(
      '${currentUser.id}-wishlist',
      itemId,
    );
  }
}
