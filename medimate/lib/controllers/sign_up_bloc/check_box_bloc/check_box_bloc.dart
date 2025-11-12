import 'package:bloc/bloc.dart';

part 'check_box_event.dart';
part 'check_box_state.dart';

class CheckBoxBloc extends Bloc<CheckBoxEvent, CheckBoxState> {
  CheckBoxBloc() : super(CheckBoxState(false)) {
    on<OnClickCheckBox>((event, emit) {
      emit(CheckBoxState(event.value));
    });
  }
}
