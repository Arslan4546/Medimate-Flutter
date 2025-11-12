import 'package:bloc/bloc.dart';

part 'check_box_event.dart';
part 'check_box_state.dart';

class CheckBoxBloc extends Bloc<CheckBoxEvent, CheckBoxState> {
  CheckBoxBloc() : super(CheckBoxState(false)) {
    on<OnClickCheckBox>(_onClickCheckBox);
  }
  // this is the event handler for checkbox click
  void _onClickCheckBox(OnClickCheckBox event, Emitter<CheckBoxState> emit) {
    emit(CheckBoxState(event.value));
  }
}
