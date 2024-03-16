import 'package:elastico/app/features/cart/data/models/cart_item_model.dart';
import 'package:elastico/app/features/product/data/models/product_model.dart';
import 'package:elastico/app/features/product/data/models/variant_item_model.dart';
import 'package:elastico/app/features/product/data/models/variant_model.dart';
import 'package:elastico/app/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HiveService {
  Future<HiveService> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ProductModelAdapter());
    Hive.registerAdapter(WishlistItemModelAdapter());
    Hive.registerAdapter(VariantItemModelAdapter());
    Hive.registerAdapter(VariantModelAdapter());
    Hive.registerAdapter(CartItemModelAdapter());
    return this;
  }

  Future<List<T>> read<T>(String boxKey) async {
    final isBoxOpen = Hive.isBoxOpen(boxKey);
    if (!isBoxOpen) {
      await Hive.openBox<T>(boxKey);
    }
    final box = Hive.box<T>(boxKey);
    return box.values.toList();
  }

  Future<void> write<T>(
    String boxKey,
    String key,
    dynamic value,
  ) {
    final box = Hive.box<T>(boxKey);
    return box.put(key, value);
  }

  Future<void> delete<T>(String boxKey, String key) {
    final box = Hive.box<T>(boxKey);
    return box.delete(key);
  }
}
