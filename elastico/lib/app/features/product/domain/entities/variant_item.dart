import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_item.freezed.dart';

@freezed
class VariantItem with _$VariantItem {
  const factory VariantItem({
    required String id,
    required String title,
    required String value,
    required int priceChange,
    required int quantity,
  }) = _VariantItem;
}
