import 'package:bloc/bloc.dart';
import 'package:medimate/services/news_api_service/news_api_model.dart';
import 'package:medimate/services/news_api_service/news_api_service.dart';
import 'package:meta/meta.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  NewsApiService api=NewsApiService();
  HomeBlocBloc() : super(HomeBlocInitial(isLoading: false)) {
    on<HomeBlocEvent>((event, emit) async{
      emit(HomeBlocloadingState(isLoading: true));
      List<NewsApiModel> data=await api.fetchHealthNews();
      emit(HomeBlocLoadedState(data, isLoading: false));
    });
  }
}
