part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCart({@Default(false) bool isReload}) = _GetCart;
  const factory CartEvent.addToCart(CartItem cartItem) = _AddToCart;
  const factory CartEvent.removeFromCart(
    String cartId, {
    @Default(false) bool removeForever,
  }) = _RemoveFromCart;
}
