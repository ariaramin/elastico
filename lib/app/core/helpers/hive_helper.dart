import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HiveHelper {
  Future<HiveHelper> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(WishlistItemAdapter());
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
