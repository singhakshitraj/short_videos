import 'package:equatable/equatable.dart';
import 'package:scroll_app/domain/models/video.dart';
import 'package:scroll_app/util/enums.dart';

class LoadingState extends Equatable {
  final List<Video> videoList;
  final DataState dataState;
  const LoadingState({
    this.dataState = DataState.notInitialised,
    this.videoList = const [],
  });
  LoadingState copyWith(List<Video>? videoList, DataState? dataState) {
    return LoadingState(
      dataState: dataState ?? this.dataState,
      videoList: videoList ?? this.videoList,
    );
  }

  @override
  List<Object?> get props => [videoList, dataState];
}
