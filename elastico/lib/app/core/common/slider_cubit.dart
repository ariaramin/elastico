import 'package:bloc/bloc.dart';

class SliderCubit extends Cubit<int> {
  SliderCubit() : super(0);

  void changeSelectedIndex(int newIndex) => emit(newIndex);
}
