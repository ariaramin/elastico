part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.initial() = _Initial;

  const factory AppEvent.userChanged(User user) = _UserChanged;

  const factory AppEvent.logout() = _Logout;
}
