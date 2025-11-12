part of 'check_box_bloc.dart';

sealed class CheckBoxEvent {}

class OnClickCheckBox extends CheckBoxEvent {
  final bool value;
  OnClickCheckBox({required this.value});
}
