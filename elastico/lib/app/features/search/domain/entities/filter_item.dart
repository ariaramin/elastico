import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_item.freezed.dart';

@freezed
class FilterItem with _$FilterItem {
  const factory FilterItem({
    required String title,
    required String type,
    String? filterSequence,
    String? sortSequence,
  }) = _FilterItem;
}
