import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:elastico/app/features/wishlist/domain/entities/wishlist_item.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class HiveHelper {
  Future<HiveHelper> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ProductAdapter());
    Hive.registerAdapter(WishlistItemAdapter());
    await Hive.openBox<WishlistItem>(Constants.wishlistKey);
    return this;
  }

  List<T> read<T>(String boxKey) {
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
