import 'package:bloc/bloc.dart';
import 'package:scroll_app/bloc/reply/reply_event.dart';
import 'package:scroll_app/bloc/reply/reply_state.dart';
import 'package:scroll_app/domain/models/video.dart';
import 'package:scroll_app/domain/services/get_reply.dart';
import 'package:scroll_app/util/enums.dart';

class ReplyBloc extends Bloc<ReplyEvent, ReplyState> {
  ReplyBloc() : super(const ReplyState()) {
    on<GetReplyEvent>(_getReply);
  }
  Future<void> _getReply(GetReplyEvent event, Emitter<ReplyState> emit) async {
    List<Video> replyVideos = await GetReply().getReplies(event.id);
    emit(state.copyWith(replyVideos, DataState.done));
  }
}
