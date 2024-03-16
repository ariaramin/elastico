import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/features/cart/data/data_sources/cart_datasource.dart';
import 'package:elastico/app/features/cart/data/models/cart_item_model.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/domain/repositories/cart_repository.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartDatasource _cartDatasource;

  CartRepositoryImpl(this._cartDatasource);

  @override
  Future<Either<Failure, List<CartItem>>> getCart() async {
    try {
      final cart = await _cartDatasource.getCart();
      return Right(cart.map((e) => e.toEntity()).toList());
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }

  @override
  Future<Either<Failure, void>> addToCart(CartItem item) async {
    try {
      await _cartDatasource.addToCart(CartItemModel.fromEntity(item));
      return const Right(null);
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromCart(String itemId) async {
    try {
      await _cartDatasource.removeFromCart(itemId);
      return const Right(null);
    } on HiveError catch (error) {
      return Left(DatabaseFailure(message: error.message));
    }
  }
}
