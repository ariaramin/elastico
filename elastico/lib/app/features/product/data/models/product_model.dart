import 'package:elastico/app/core/constants/constants.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@HiveType(typeId: 1)
@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    @HiveField(0) required String collectionId,
    @HiveField(1) required String id,
    @HiveField(2) required String thumbnail,
    @HiveField(3) required List<String> images,
    @HiveField(4) required String name,
    @HiveField(5) required String description,
    @HiveField(6) required String popularity,
    @HiveField(7) required String category,
    @HiveField(8) required int price,
    @HiveField(9) required int discountPrice,
  }) = _ProductModel;

  factory ProductModel.fromRecord(RecordModel record) =>
      ProductModel.fromJson(record.toJson());

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.fromEntity(Product entity) => ProductModel(
        collectionId: entity.collectionId,
        id: entity.id,
        thumbnail: entity.thumbnail,
        images: entity.images,
        name: entity.name,
        description: entity.description,
        popularity: entity.popularity,
        category: entity.category,
        price: entity.price,
        discountPrice: entity.discountPrice,
      );

  Product toEntity() => Product(
        collectionId: collectionId,
        id: id,
        thumbnail: thumbnail.startsWith('http')
            ? thumbnail
            : '${Constants.baseUrl}api/files/$collectionId/$id/$thumbnail',
        images: List<String>.from(images)
            .map((image) => image.startsWith('http')
                ? image
                : '${Constants.baseUrl}api/files/$collectionId/$id/$image')
            .toList(),
        name: name,
        description: description,
        popularity: popularity,
        category: category,
        price: price,
        discountPrice: discountPrice,
      );
}
