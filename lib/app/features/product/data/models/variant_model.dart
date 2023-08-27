import 'package:elastico/app/features/product/data/models/variant_item_model.dart';
import 'package:elastico/app/features/product/domain/entities/variant.dart';

class VariantModel extends Variant {
  VariantModel({
    required String id,
    required String product,
    required String title,
    required String type,
    required List<VariantItemModel> items,
  }) : super(
          id: id,
          product: product,
          title: title,
          type: type,
          items: items,
        );

  factory VariantModel.fromJson(Map<String, dynamic> json) {
    return VariantModel(
      id: json['id'],
      product: json['product'],
      title: json['title'],
      type: json['type'],
      items: (json['expand']['items'] as List<dynamic>)
          .map((variantItemJson) => VariantItemModel.fromJson(variantItemJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product,
      'title': title,
      'type': type,
      'items': items,
    };
  }
}
