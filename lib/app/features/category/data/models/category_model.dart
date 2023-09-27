import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  const factory CategoryModel({
    required String collectionId,
    required String id,
    required String thumbnail,
    required String icon,
    required String title,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Category toEntity() => Category(
        id: id,
        thumbnail: '${Constants.baseUrl}files/$collectionId/$id/$thumbnail',
        icon: '${Constants.baseUrl}files/$collectionId/$id/$icon',
        title: title,
      );
}
