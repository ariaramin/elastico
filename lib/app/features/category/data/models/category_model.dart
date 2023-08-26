import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/category/domain/entities/category.dart';

class CategoryModel extends Category {
  CategoryModel({
    required String id,
    required String thumbnail,
    required String icon,
    required String title,
  }) : super(
          id: id,
          thumbnail: thumbnail,
          icon: icon,
          title: title,
        );

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      thumbnail:
          '${Constants.baseUrl}files/${json['collectionId']}/${json['id']}/${json['thumbnail']}',
      icon:
          '${Constants.baseUrl}files/${json['collectionId']}/${json['id']}/${json['icon']}',
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'thumbnail': thumbnail,
      'icon': icon,
      'title': title,
    };
  }
}
