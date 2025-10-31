part of 'sign_up_bloc.dart';


sealed class SignUpEvent {}

class OnClickCheckBox extends SignUpEvent{
  final bool value;
  OnClickCheckBox({required this.value});
}
