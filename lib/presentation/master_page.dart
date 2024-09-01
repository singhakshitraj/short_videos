import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app/bloc/loading/loading_bloc.dart';
import 'package:scroll_app/bloc/loading/loading_event.dart';
import 'package:scroll_app/bloc/loading/loading_state.dart';
import 'package:scroll_app/bloc/reply/reply_bloc.dart';
import 'package:scroll_app/bloc/reply/reply_event.dart';
import 'package:scroll_app/bloc/reply/reply_state.dart';
import 'package:scroll_app/util/enums.dart';
import 'package:scroll_app/widgets/video_player_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({super.key});

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  void initState() {
    context.read<LoadingBloc>().add(LoadDataEvent());
    context.read<ReplyBloc>().add(const GetReplyEvent(id: '1'));
    super.initState();
  }

  final PageController _vertController = PageController(initialPage: 0);
  final PageController _horiController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoadingBloc, LoadingState>(
        builder: (context, state) {
          if (state.dataState == DataState.notInitialised ||
              state.dataState == DataState.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.dataState == DataState.error) {
            return const Center(
              child: Text('Error Encountered'),
            );
          } else {
            FlutterNativeSplash.remove();
            return PageView.builder(
              itemCount: state.videoList.length,
              controller: _vertController,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, vertIndex) {
                context.read<ReplyBloc>().add(GetReplyEvent(
                    id: state.videoList[vertIndex].id.toString()));
                return BlocBuilder<ReplyBloc, ReplyState>(
                  builder: (context, replyState) {
                    if (state.dataState == DataState.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return PageView.builder(
                          itemCount: replyState.video.length + 1,
                          controller: _horiController,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, horiIndex) {
                            if (horiIndex == 0) {
                              return VideoPlayerItem(
                                videoUrl: state.videoList[vertIndex].videoLink
                                    .toString(),
                                imageUrl: state
                                    .videoList[vertIndex].thumbnailUrl
                                    .toString(),
                                video: state.videoList[vertIndex],
                              );
                            } else {
                              return VideoPlayerItem(
                                parentVideo: state.videoList[vertIndex],
                                videoUrl: replyState
                                    .video[horiIndex - 1].videoLink
                                    .toString(),
                                imageUrl: replyState
                                    .video[horiIndex - 1].thumbnailUrl
                                    .toString(),
                                video: replyState.video[horiIndex - 1],
                              );
                            }
                          });
                    }
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
