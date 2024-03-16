import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required String id,
    required Product product,
    Variant? variant,
    @Default(1) int quantity,
  }) = _CartItem;
}
