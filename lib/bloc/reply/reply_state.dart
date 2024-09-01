import 'package:equatable/equatable.dart';
import 'package:scroll_app/domain/models/video.dart';
import 'package:scroll_app/util/enums.dart';

class ReplyState extends Equatable {
  final List<Video> video;
  final DataState dataState;
  const ReplyState({
    this.video = const [],
    this.dataState = DataState.notInitialised,
  });
  ReplyState copyWith(List<Video>? video, DataState? dataState) {
    return ReplyState(
        video: video ?? this.video, dataState: dataState ?? this.dataState);
  }

  @override
  List<Object?> get props => [video, dataState];
}
