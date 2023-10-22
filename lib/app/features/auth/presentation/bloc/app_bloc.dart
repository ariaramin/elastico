import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:elastico/app/core/helpers/auth_helper.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@lazySingleton
class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthHelper _authHelper;
  late final StreamSubscription<User> _userSubscription;

  AppBloc(this._authHelper)
      : super(const AppState(status: AppStatus.unauthenticated)) {
    on<AppEvent>((events, emit) async => events.map(
          initiale: (_) async => _initiale(emit),
          userChanged: (event) => _userChanged(event, emit),
          logout: (_) => _authHelper.logout(),
        ));
    _userSubscription = _authHelper.user.listen((user) {
      add(AppEvent.userChanged(user));
    });
  }

  void _userChanged(
    _UserChanged event,
    Emitter<AppState> emit,
  ) {
    event.user.isEmpty
        ? emit(state.copyWith(status: AppStatus.unauthenticated))
        : emit(state.copyWith(
            status: AppStatus.authenticated,
            user: event.user,
          ));
  }

  void _initiale(Emitter<AppState> emit) async {
    final user = await _authHelper.currentUser;
    user.isEmpty
        ? emit(state.copyWith(status: AppStatus.unauthenticated))
        : emit(state.copyWith(
            status: AppStatus.authenticated,
            user: user,
          ));
  }

  void initiale() => add(const AppEvent.initiale());

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
