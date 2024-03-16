part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

@freezed
class AppState with _$AppState {
  const factory AppState({
    required AppStatus status,
    @Default(User.empty) User user,
  }) = _AppState;
}
