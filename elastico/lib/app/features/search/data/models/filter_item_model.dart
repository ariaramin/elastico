import 'package:elastico/app/features/search/domain/entities/filter_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'filter_item_model.freezed.dart';
part 'filter_item_model.g.dart';

@freezed
class FilterItemModel with _$FilterItemModel {
  const FilterItemModel._();

  const factory FilterItemModel({
    required String title,
    required String type,
    String? filterSequence,
    String? sortSequence,
  }) = _FilterItemModel;

  factory FilterItemModel.fromRecord(RecordModel record) =>
      FilterItemModel.fromJson(record.toJson());

  factory FilterItemModel.fromJson(Map<String, dynamic> json) =>
      _$FilterItemModelFromJson(json);

  FilterItem toEntity() => FilterItem(
        title: title,
        type: type,
        filterSequence: filterSequence,
        sortSequence: sortSequence,
      );
}
