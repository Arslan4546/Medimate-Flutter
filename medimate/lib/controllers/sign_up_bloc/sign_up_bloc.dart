import 'package:bloc/bloc.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState(false)) {
    on<OnClickCheckBox>((event, emit) {
      emit(SignUpState(event.value));
    });
  }
}
