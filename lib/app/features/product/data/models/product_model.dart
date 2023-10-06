import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
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
  }) = _ProductModel;

  factory ProductModel.fromRecord(RecordModel record) =>
      ProductModel.fromJson(record.toJson());

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Product toEntity() => Product(
        id: id,
        thumbnail: '${Constants.baseUrl}api/files/$collectionId/$id/$thumbnail',
        images: List<String>.from(images)
            .map((image) =>
                '${Constants.baseUrl}api/files/$collectionId/$id/$image')
            .toList(),
        name: name,
        description: description,
        popularity: popularity,
        category: category,
        price: price,
        discountPrice: discountPrice,
      );
}
