import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@HiveType(typeId: 1)
@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    @HiveField(0) required String id,
    @HiveField(1) required String thumbnail,
    @HiveField(2) required List<String> images,
    @HiveField(3) required String name,
    @HiveField(4) required String description,
    @HiveField(5) required String popularity,
    @HiveField(6) required String category,
    @HiveField(7) required int price,
    @HiveField(8) required int discountPrice,
  }) = _Product;

  int get finalPrice => price - discountPrice;
  int get discountPercent => (((price - finalPrice) / price) * 100).round();
}
