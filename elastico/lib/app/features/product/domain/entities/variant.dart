import 'package:elastico/app/features/product/domain/entities/variant_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant.freezed.dart';

@freezed
class Variant with _$Variant {
  const factory Variant({
    required String id,
    required String product,
    required String title,
    required String type,
    required List<VariantItem> items,
  }) = _Variant;
}
