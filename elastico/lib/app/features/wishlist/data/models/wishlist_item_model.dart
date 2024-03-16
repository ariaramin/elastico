import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'wishlist_item_model.freezed.dart';
part 'wishlist_item_model.g.dart';

@HiveType(typeId: 0)
@freezed
class WishlistItemModel with _$WishlistItemModel {
  const WishlistItemModel._();

  const factory WishlistItemModel({
    @HiveField(0) required String id,
    @HiveField(1) required ProductModel product,
  }) = _WishlistItemModel;

  factory WishlistItemModel.fromEntity(WishlistItem entity) =>
      WishlistItemModel(
        id: entity.id,
        product: ProductModel.fromEntity(entity.product),
      );

  WishlistItem toEntity() => WishlistItem(
        id: id,
        product: product.toEntity(),
      );
}
