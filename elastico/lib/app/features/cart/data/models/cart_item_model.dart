import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:elastico/app/features/product/data/models/variant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@HiveType(typeId: 2)
@freezed
class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  const factory CartItemModel({
    @HiveField(0) required String id,
    @HiveField(1) required ProductModel product,
    @HiveField(2) VariantModel? variant,
    @HiveField(3) required int quantity,
  }) = _CartItemModel;

  factory CartItemModel.fromEntity(CartItem entity) => CartItemModel(
        id: entity.id,
        product: ProductModel.fromEntity(entity.product),
        variant: entity.variant != null
            ? VariantModel.fromEntity(entity.variant!)
            : null,
        quantity: entity.quantity,
      );

  CartItem toEntity() => CartItem(
        id: id,
        product: product.toEntity(),
        variant: variant?.toEntity(),
        quantity: quantity,
      );
}
