part of 'bottom_navigation_bloc.dart';

@immutable
sealed class BottomNavigationState {
  int index;
  BottomNavigationState({required this.index});
}
@immutable
final class BottomNavigationInitial extends BottomNavigationState {
  BottomNavigationInitial({required super.index});
}
@immutable
final class BottomNavigationChangeIndex extends BottomNavigationState{
  BottomNavigationChangeIndex({required super.index});
  
}
