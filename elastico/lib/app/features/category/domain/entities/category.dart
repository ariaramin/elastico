import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String parent,
    required String thumbnail,
    required String icon,
    required String title,
  }) = _Category;
}
