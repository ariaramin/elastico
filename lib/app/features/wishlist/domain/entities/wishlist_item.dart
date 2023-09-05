import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'wishlist_item.g.dart';

@HiveType(typeId: 0)
class WishlistItem extends Equatable {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final Product product;

  const WishlistItem({
    required this.id,
    required this.product,
  });

  @override
  List<Object?> get props => [id, product];
}
