import 'package:elastico/app/features/product/domain/entities/variant_item.dart';

class VariantItemModel extends VariantItem {
  VariantItemModel({
    required String id,
    required String title,
    required String value,
    required int priceChange,
    required int quantity,
  }) : super(
          id: id,
          title: title,
          value: value,
          priceChange: priceChange,
          quantity: quantity,
        );

  factory VariantItemModel.fromJson(Map<String, dynamic> json) {
    return VariantItemModel(
      id: json['id'],
      title: json['title'],
      value: json['value'],
      priceChange: json['price_change'],
      quantity: json['quantity'],
    );
  }
}
