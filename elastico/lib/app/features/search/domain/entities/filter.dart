import 'package:elastico/app/features/search/domain/entities/filter_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
class Filter with _$Filter {
  const factory Filter({
    required String title,
    required List<FilterItem> items,
  }) = _Filter;
}
