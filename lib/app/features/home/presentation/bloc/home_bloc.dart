import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:elastico/app/features/home/domain/entities/home_data.dart';
import 'package:elastico/app/features/home/domain/usecases/get_home_data.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeData getHomeData;

  HomeBloc({required this.getHomeData}) : super(HomeInitial()) {
    on<HomeInitialRequest>((event, emit) async {
      emit(HomeLoading());
      final homeData = await getHomeData.call();
      homeData.fold(
        (failure) => emit(HomeError(errorMessage: failure.message)),
        (response) => emit(HomeLoaded(homeData: response)),
      );
    });
  }
}
