part of 'network_bloc.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState.initial() = _Initial;
  const factory NetworkState.loading() = _Loading;
  const factory NetworkState.success() = _Success;
  const factory NetworkState.failure() = _Failure;
}
