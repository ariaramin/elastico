import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required String id,
    required String thumbnail,
    required List<String> images,
    required String name,
    required String description,
    required String popularity,
    required String category,
    required int price,
    required int discountPrice,
  }) : super(
          id: id,
          thumbnail: thumbnail,
          images: images,
          name: name,
          description: description,
          popularity: popularity,
          category: category,
          price: price,
          discountPrice: discountPrice,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      thumbnail:
          '${Constants.baseUrl}files/${json['collectionId']}/${json['id']}/${json['thumbnail']}',
      images: List<String>.from(json['images'])
          .map((image) =>
              '${Constants.baseUrl}files/${json['collectionId']}/${json['id']}/$image')
          .toList(),
      name: json['name'],
      description: json['description'],
      popularity: json['popularity'],
      category: json['category'],
      price: json['price'],
      discountPrice: json['discount_price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'thumbnail': thumbnail,
      'images': images,
      'name': name,
      'description': description,
      'popularity': popularity,
      'category': category,
      'price': price,
      'discount_price': discountPrice,
    };
  }
}
