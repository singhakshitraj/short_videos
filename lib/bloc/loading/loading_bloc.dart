import 'package:bloc/bloc.dart';
import 'package:scroll_app/bloc/loading/loading_event.dart';
import 'package:scroll_app/bloc/loading/loading_state.dart';
import 'package:scroll_app/domain/models/video.dart';
import 'package:scroll_app/domain/services/get_feed.dart';
import 'package:scroll_app/util/enums.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
  LoadingBloc() : super(const LoadingState()) {
    on<LoadDataEvent>(_loadData);
  }
  Future<void> _loadData(
      LoadDataEvent event, Emitter<LoadingState> emit) async {
    emit(state.copyWith(null, DataState.loading));
    List<Video> videoData = await GetFeed().getFeedData();
    emit(state.copyWith(videoData, DataState.gettingReplies));
  }
}
