import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';

abstract class CartRepository {
  Future<Either<Failure, List<CartItem>>> getCart();

  Future<Either<Failure, void>> addToCart(CartItem item);

  Future<Either<Failure, void>> removeFromCart(String itemId);
}
