import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:elastico/app/core/services/remote/auth_service.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:elastico/app/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@lazySingleton
class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthService _authHelper;
  final WishlistBloc _wishlistBloc;
  final CartBloc _cartBloc;
  late final StreamSubscription<User> _userSubscription;

  AppBloc(
    this._authHelper,
    this._wishlistBloc,
    this._cartBloc,
  ) : super(const AppState(status: AppStatus.unauthenticated)) {
    on<AppEvent>((events, emit) async => events.map(
          initial: (_) async => _initial(emit),
          userChanged: (event) => _userChanged(event, emit),
          logout: (_) => _authHelper.logout(),
        ));
    _userSubscription = _authHelper.user.listen((user) {
      add(_UserChanged(user));
    });
  }

  void _userChanged(
    _UserChanged event,
    Emitter<AppState> emit,
  ) {
    if (event.user.isNotEmpty) {
      _wishlistBloc.getWishlist();
      _cartBloc.getCart();
      emit(state.copyWith(
        status: AppStatus.authenticated,
        user: event.user,
      ));
    } else {
      emit(state.copyWith(status: AppStatus.unauthenticated));
    }
  }

  Future<void> _initial(Emitter<AppState> emit) async {
    _wishlistBloc.getWishlist();
    _cartBloc.getCart();
    final user = await _authHelper.currentUser;
    user.isEmpty
        ? emit(state.copyWith(status: AppStatus.unauthenticated))
        : emit(state.copyWith(
            status: AppStatus.authenticated,
            user: user,
          ));
  }

  void initial() => add(const _Initial());

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
