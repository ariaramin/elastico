import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'product.g.dart';

@HiveType(typeId: 1)
class Product extends Equatable {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String thumbnail;

  @HiveField(2)
  final List<String> images;

  @HiveField(3)
  final String name;

  @HiveField(4)
  final String description;

  @HiveField(5)
  final String popularity;

  @HiveField(6)
  final String category;

  @HiveField(7)
  final int price;

  @HiveField(8)
  final int discountPrice;

  late final int discountPercent;
  late final int finalPrice;

  Product({
    required this.id,
    required this.thumbnail,
    required this.images,
    required this.name,
    required this.description,
    required this.popularity,
    required this.category,
    required this.price,
    required this.discountPrice,
  }) {
    finalPrice = price - discountPrice;
    discountPercent = (((price - finalPrice) / price) * 100).round();
  }

  @override
  List<Object?> get props => [
        id,
        thumbnail,
        images,
        name,
        description,
        popularity,
        category,
        price,
        discountPrice,
        discountPercent,
        finalPrice,
      ];
}
