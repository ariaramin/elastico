import 'package:elastico/app/features/search/data/models/filter_item_model.dart';
import 'package:elastico/app/features/search/domain/entities/filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  const FilterModel._();

  const factory FilterModel({
    required String title,
    @JsonKey(name: 'expand', fromJson: _convertListOfItem)
    required List<FilterItemModel> items,
  }) = _FilterModel;

  factory FilterModel.fromRecord(RecordModel record) =>
      FilterModel.fromJson(record.toJson());

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);

  Filter toEntity() => Filter(
        title: title,
        items: items.map((e) => e.toEntity()).toList(),
      );
}

List<FilterItemModel> _convertListOfItem(Map<String, dynamic> json) =>
    (json['items'] as List)
        .map((itemJson) => FilterItemModel.fromJson(itemJson))
        .toList();
