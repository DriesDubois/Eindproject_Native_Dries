import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController videoController = VideoPlayerController.asset("assets/media/videoplayback.mp4");

  void initState() {
    videoController.setLooping(true);
    videoController.initialize();
    super.initState();
  }

  Widget build(BuildContext context) {
    bool isVisible = true;

    return ListView(
        children: <Widget>[
          AspectRatio(
              aspectRatio: 640 / 360,
              child: VideoPlayer(videoController)
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                videoController.value.isPlaying ? videoController.pause() : videoController.play();
              });
            },
            child: videoController.value.isPlaying ? Icon(Icons.pause, size: 60) : Icon(Icons.play_arrow, size: 60),
          ),
        ]
    );
  }
}