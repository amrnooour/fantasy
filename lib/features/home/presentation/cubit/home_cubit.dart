import 'package:fantasy/features/home/presentation/cubit/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());

  int currentIndex = 0;

  changeBottomNav(int index) {
    currentIndex = index;
    emit(BottomNav());
  }
}
