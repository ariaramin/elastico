import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    required String collectionId,
    required String id,
    required String thumbnail,
    required List<String> images,
    required String name,
    required String description,
    required String popularity,
    required String category,
    required int price,
    required int discountPrice,
  }) = _Product;

  int get finalPrice => price - discountPrice;
  int get discountPercent => (((price - finalPrice) / price) * 100).round();
}
