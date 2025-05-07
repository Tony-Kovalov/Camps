import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../custom_text_styles.dart';

class VideoScene3 extends StatefulWidget {
  const VideoScene3({super.key, required this.numOfDay, required this.links});

  final int numOfDay;
  final Map<String, String> links;

  @override
  State<VideoScene3> createState() => _VideoScene3State();
}

class _VideoScene3State extends State<VideoScene3> {
  bool isFullScreen = false;
  Map<String, YoutubePlayerController> controllers = {};
  Map<String, YoutubePlayer> players = {};

  @override
  void initState() {
    for (var v in widget.links.keys) {
      String? videoId = YoutubePlayer.convertUrlToId(widget.links[v]!);
      YoutubePlayerController controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
      controllers[v] = controller;

      var player = YoutubePlayer(
        controller: controller,
        liveUIColor: Colors.amber,
      );
      players[v] = player;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !isFullScreen
          ? AppBar(
              backgroundColor: Colors.white,
            )
          : null,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffffffff), Color(0xff46a6ff)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "День ${widget.numOfDay}",
                    style: CustomTextStyle.inter23Bold,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ...getWidgets(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getWidgets() {
    List<Widget> res = [];

    for (var v in widget.links.keys) {
      res.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(v, style: CustomTextStyle.inter16Bold),
        ),
      );
      res.add(const SizedBox(height: 16));

      res.add(
        YoutubePlayerBuilder(
          onEnterFullScreen: () {
            setState(() {
              isFullScreen = true;
            });
          },
          onExitFullScreen: () {
            setState(() {
              isFullScreen = false;
            });
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                overlays: SystemUiOverlay.values);
          },
          player: players[v]!,
          builder: (BuildContext context, Widget widget) {
            return players[v]!;
          },
        ),
      );

      res.add(const SizedBox(height: 32));
    }

    return res;
  }
}
