import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_item.freezed.dart';

@freezed
class WishlistItem with _$WishlistItem {
  const factory WishlistItem({
    required String id,
    required Product product,
  }) = _WishlistItem;
}
