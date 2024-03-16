import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/domain/repositories/cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddToCart implements Usecase<void, CartItem> {
  final CartRepository _cartRepository;

  AddToCart(this._cartRepository);

  @override
  Future<Either<Failure, void>> call(CartItem params) async =>
      _cartRepository.addToCart(params);
}
