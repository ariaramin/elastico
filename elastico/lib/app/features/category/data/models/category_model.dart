import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:elastico/app/core/constants/constants.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';
import 'package:pocketbase/pocketbase.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  const factory CategoryModel({
    required String collectionId,
    required String id,
    required String parent,
    required String thumbnail,
    required String icon,
    required String title,
  }) = _CategoryModel;

  factory CategoryModel.fromRecord(RecordModel record) =>
      CategoryModel.fromJson(record.toJson());

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Category toEntity() => Category(
        id: id,
        parent: parent,
        thumbnail: '${Constants.baseUrl}api/files/$collectionId/$id/$thumbnail',
        icon: '${Constants.baseUrl}api/files/$collectionId/$id/$icon',
        title: title,
      );
}
