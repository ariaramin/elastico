import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/cart/domain/repositories/cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveFromCart implements Usecase<void, String> {
  final CartRepository _cartRepository;

  RemoveFromCart(this._cartRepository);

  @override
  Future<Either<Failure, void>> call(params) async =>
      _cartRepository.removeFromCart(params);
}
