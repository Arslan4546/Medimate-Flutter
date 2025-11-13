import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationInitial(index: 0)) {
    on<BottomNavigationEvent>((event, emit) {
      state.index=event.index;
      emit(BottomNavigationChangeIndex(index: event.index));
    });
  }
}
