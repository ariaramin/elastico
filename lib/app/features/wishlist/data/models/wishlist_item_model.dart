import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';

class WishlistItemModel extends WishlistItem {
  const WishlistItemModel({
    required String id,
    required Product product,
  }) : super(
          id: id,
          product: product,
        );

  factory WishlistItemModel.fromEntity(WishlistItem wishlistItem) {
    return WishlistItemModel(
      id: wishlistItem.id,
      product: wishlistItem.product,
    );
  }
}
