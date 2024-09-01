import 'package:flutter/material.dart';
import 'package:scroll_app/domain/models/video.dart';
import 'package:scroll_app/widgets/bottom_right_options.dart';
import 'package:scroll_app/widgets/caption.dart';
import 'package:scroll_app/widgets/loading_screen.dart';
import 'package:scroll_app/widgets/parent_data.dart';
import 'package:scroll_app/widgets/stop_video_icon.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  final Video? video;
  final Video? parentVideo;
  final String videoUrl;
  final String imageUrl;
  const VideoPlayerItem({
    super.key,
    required this.videoUrl,
    required this.imageUrl,
    this.parentVideo,
    required this.video,
  });

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController _videoPlayerController;
  bool isLoaded = false;
  bool isStopped = false;
  bool isLiked = false;
  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
          ..initialize().then((value) {
            _videoPlayerController.play();
            _videoPlayerController.setLooping(true);
            _videoPlayerController.videoPlayerOptions;
            setState(() {
              isLoaded = true;
            });
          });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    return Stack(children: [
      (isLoaded)
          ? GestureDetector(
              onTap: () {
                if (isStopped) {
                  _videoPlayerController.play();
                  setState(() {
                    isStopped = false;
                  });
                } else {
                  _videoPlayerController.pause();
                  setState(() {
                    isStopped = true;
                  });
                }
              },
              child: VideoPlayer(_videoPlayerController))
          : loadingVideoData(ht, widget.imageUrl),
      videoCaption(widget.video),
      (isStopped) ? stoppedVideoIcon() : const SizedBox(height: 1),
      bottomOptions(ht, 30),
      (widget.parentVideo == null)
          ? const SizedBox(height: 1)
          : parentData(context, widget.parentVideo!),
    ]);
  }
}
