import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/domain/repositories/cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCart implements NoParamUsecase<List<CartItem>> {
  final CartRepository _cartRepository;

  GetCart(this._cartRepository);

  @override
  Future<Either<Failure, List<CartItem>>> call() async =>
      await _cartRepository.getCart();
}
