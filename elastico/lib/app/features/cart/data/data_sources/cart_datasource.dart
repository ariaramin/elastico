import 'package:elastico/app/core/services/local/hive_service.dart';
import 'package:elastico/app/core/services/remote/auth_service.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:elastico/app/features/cart/data/models/cart_item_model.dart';
import 'package:injectable/injectable.dart';

sealed class CartDatasource {
  Future<List<CartItemModel>> getCart();
  Future<void> addToCart(CartItemModel item);
  Future<void> removeFromCart(String itemId);
}

@Injectable(as: CartDatasource)
class CartDatasourceImpl implements CartDatasource {
  final HiveService _hiveHelper;
  final AuthService _authHelper;

  CartDatasourceImpl(this._hiveHelper, this._authHelper);

  Future<User> getCurrentUser() async => _authHelper.currentUser;

  @override
  Future<List<CartItemModel>> getCart() async {
    final currentUser = await getCurrentUser();
    return await _hiveHelper.read<CartItemModel>('${currentUser.id}-cart');
  }

  @override
  Future<void> addToCart(CartItemModel item) async {
    final currentUser = await getCurrentUser();
    await _hiveHelper.write<CartItemModel>(
      '${currentUser.id}-cart',
      item.id,
      item,
    );
  }

  @override
  Future<void> removeFromCart(String itemId) async {
    final currentUser = await getCurrentUser();
    await _hiveHelper.delete<CartItemModel>(
      '${currentUser.id}-cart',
      itemId,
    );
  }
}
