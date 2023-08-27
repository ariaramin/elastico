import 'package:elastico/app/features/product/domain/entities/variant_item.dart';

class Variant {
  final String id;
  final String product;
  final String title;
  final String type;
  final List<VariantItem> items;

  Variant({
    required this.id,
    required this.product,
    required this.title,
    required this.type,
    required this.items,
  });
}
