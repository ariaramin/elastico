import 'package:bloc/bloc.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit() : super(0);

  changeSelectedIndex(int newIndex) => emit(newIndex);
}
