import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/domain/usecases/add_to_cart.dart';
import 'package:elastico/app/features/cart/domain/usecases/get_cart.dart';
import 'package:elastico/app/features/cart/domain/usecases/remove_from_cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@lazySingleton
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCart _getCart;
  final AddToCart _addToCart;
  final RemoveFromCart _removeFromCart;

  CartBloc(
    this._getCart,
    this._addToCart,
    this._removeFromCart,
  ) : super(const _Initial()) {
    on<CartEvent>(
      (events, emit) async => events.map(
        getCart: (event) async => _getCartItems(event, emit),
        addToCart: (event) async => _addItemToCart(event, emit),
        removeFromCart: (event) async => _removeItemFromCart(event, emit),
      ),
    );
  }

  Future<void> _getCartItems(
    _GetCart event,
    Emitter<CartState> emit,
  ) async {
    if (!event.isReload) {
      emit(const _Loading());
    }
    final result = await _getCart.call();
    result.fold(
      (failure) => emit(_Error(message: failure.message)),
      (response) => emit(_Loaded(cart: response)),
    );
  }

  Future<void> _addItemToCart(
    _AddToCart event,
    Emitter<CartState> emit,
  ) async {
    if (state is _Loaded) {
      // check if cart item already exists
      final cart = List<CartItem?>.from((state as _Loaded).cart);
      final existingCartItem = cart.firstWhere(
        (element) => element!.id == event.cartItem.id,
        orElse: () => null,
      );

      // if cart item exists, increment quantity
      final updatedCartItem = existingCartItem?.copyWith(
            quantity: existingCartItem.quantity + 1,
          ) ??
          event.cartItem;

      await _handleAddToCartOperation(updatedCartItem, emit);
    }
  }

  Future<void> _handleAddToCartOperation(
    CartItem cartItem,
    Emitter<CartState> emit,
  ) async {
    final result = await _addToCart.call(cartItem);
    result.fold(
      (failure) => emit(_Error(message: failure.message)),
      (_) => getCart(isReload: true),
    );
  }

  Future<void> _removeItemFromCart(
      _RemoveFromCart event, Emitter<CartState> emit) async {
    if (state is _Loaded) {
      // if removeForever is true, remove item from cart
      if (event.removeForever) {
        await _handleRemoveFromCartOperation(event.cartId, emit);
      } else {
        // else check if cart item already exists, decrement quantity
        final cart = List<CartItem?>.from((state as _Loaded).cart);
        final existingCartItem = cart.firstWhere(
          (element) => element!.id == event.cartId,
          orElse: () => null,
        );

        if (existingCartItem?.quantity == 1) {
          await _handleRemoveFromCartOperation(existingCartItem!.id, emit);
        } else {
          final updatedCartItem = existingCartItem?.copyWith(
                quantity: existingCartItem.quantity - 1,
              ) ??
              existingCartItem!;

          await _handleAddToCartOperation(updatedCartItem, emit);
        }
      }
    }
  }

  Future<void> _handleRemoveFromCartOperation(
    String cartId,
    Emitter<CartState> emit,
  ) async {
    final result = await _removeFromCart.call(cartId);
    result.fold(
      (failure) => emit(_Error(message: failure.message)),
      (_) => getCart(isReload: true),
    );
  }

  void getCart({bool isReload = false}) => add(_GetCart(isReload: isReload));

  void addToCart(CartItem cartItem) => add(_AddToCart(cartItem));

  void removeFromCart(
    String productId, {
    bool removeForever = false,
  }) =>
      add(_RemoveFromCart(
        productId,
        removeForever: removeForever,
      ));
}
