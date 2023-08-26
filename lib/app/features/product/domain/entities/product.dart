import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String thumbnail;
  final List<String> images;
  final String name;
  final String description;
  final String popularity;
  final String category;
  final int price;
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
