import 'package:bloc/bloc.dart';
import 'package:elastico/app/core/helpers/network_helper.dart';
import 'package:equatable/equatable.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  final NetworkHelper networkHelper;

  NetworkBloc({required this.networkHelper}) : super(NetworkInitial()) {
    on<CheckNetworkConnection>(_checkNetworkConnection);
  }

  void _checkNetworkConnection(
    CheckNetworkConnection event,
    Emitter<NetworkState> emit,
  ) async {
    final isConnected = await networkHelper.checkNetworkConnection();
    isConnected ? emit(NetworkSuccess()) : emit(NetworkFailure());
  }
}
