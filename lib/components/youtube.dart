import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  YoutubePlayerController? _controller;

  void initState() {
    super.initState();

    _controller = YoutubePlayerController(initialVideoId: 'tnP6WJNEN24',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 340,
      width: 200,
      child: YoutubePlayer(
        controller: _controller!,
        liveUIColor: Colors.blue,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.black26,
        progressColors: ProgressBarColors(
          playedColor: Colors.blue,
          handleColor: Colors.lightBlue,
        ),
      ),
    );
  }
}
