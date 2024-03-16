import 'package:bloc/bloc.dart';
import 'package:elastico/app/core/services/remote/network_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_event.dart';
part 'network_state.dart';
part 'network_bloc.freezed.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  final NetworkService _networkHelper;

  NetworkBloc(this._networkHelper) : super(const _Initial()) {
    on<NetworkEvent>(
      (events, emit) async => events.map(
        checkNetworkConnection: (event) => _checkNetworkConnection(event, emit),
      ),
    );
  }

  Future<void> _checkNetworkConnection(
    _CheckNetworkConnection event,
    Emitter<NetworkState> emit,
  ) async {
    final isConnected = await _networkHelper.checkNetworkConnection();
    isConnected ? emit(const _Success()) : emit(const _Failure());
  }

  void checkNetworkConnection() => add(const _CheckNetworkConnection());
}
