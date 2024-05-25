import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key, required this.url, required this.onFullScreenChanged}) : super(key: key);

  final String url;
  final Function(bool isFullScreen) onFullScreenChanged;

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
    ]);

    String? videoId = YoutubePlayer.convertUrlToId(widget.url);

    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var player = YoutubePlayer(
      controller: _controller!,
      liveUIColor: Colors.amber,
    );

    return YoutubePlayerBuilder(
      onEnterFullScreen: () {
        widget.onFullScreenChanged(true);
      },
      onExitFullScreen: () {
        widget.onFullScreenChanged(false);
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
      },
      player: player,
      builder: (BuildContext context, Widget widget) {
        return Column(
          children: [
            player,
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
}
