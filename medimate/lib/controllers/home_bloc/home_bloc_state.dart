part of 'home_bloc_bloc.dart';

@immutable
sealed class HomeBlocState {
  final bool isLoading;
  final List<NewsApiModel>? newsApi;
  const HomeBlocState(this.newsApi, {required this.isLoading});
}

final class HomeBlocInitial extends HomeBlocState {
  const HomeBlocInitial({required super.isLoading}) : super(null);
}
final class HomeBlocloadingState extends HomeBlocState{
  const HomeBlocloadingState({required super.isLoading}) : super(null);
}
final class HomeBlocLoadedState extends HomeBlocState{
  const HomeBlocLoadedState(super.newsApi, {required super.isLoading});
}
