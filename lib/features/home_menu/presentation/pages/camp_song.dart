import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:camps_program/features/home_menu/presentation/custom_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class CampSong extends StatefulWidget {
  const CampSong({super.key});

  @override
  State<CampSong> createState() => _CampSongState();
}

class _CampSongState extends State<CampSong> {
  bool _play = false;
  Duration duration = Duration(seconds: 0);
  Duration position = Duration(seconds: 0);
  late AssetsAudioPlayer assetsAudioPlayer;

  @override
  void initState() {
    assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    assetsAudioPlayer.open(
      Audio("sounds/camp_song.mp3"),
      autoStart: false,
      showNotification: true,
    );

    //Listen to the current playing song
    assetsAudioPlayer.current.listen((playingAudio) {
      duration = playingAudio?.audio.duration ?? Duration(seconds: 0);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Табірна пісня"),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xfffcfcfe), Color(0xffa6a7ff)],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffa6a7ff), Color(0xff6c69ff)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Реальний герой",
                    style: CustomTextStyle.inter16Bold,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      assetsAudioPlayer.playOrPause();
                      setState(() {
                        _play = !_play;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          _play ? Icons.pause_circle : Icons.play_circle,
                          size: 60,
                        ),
                        const SizedBox(width: 10),
                        StreamBuilder(
                          stream: assetsAudioPlayer.currentPosition,
                          builder: (context, asyncSnapshot) {
                            final Duration? position = asyncSnapshot.data;
                            return Expanded(
                              child: Slider(
                                min: 0,
                                max: duration.inSeconds.toDouble(),
                                value: position?.inSeconds.toDouble() ?? 0,
                                onChanged: (double value) {
                                  assetsAudioPlayer
                                      .seek(Duration(seconds: value.toInt()));
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Посилання на пісню:",
                    style: CustomTextStyle.inter16Bold,
                  ),
                  LinkWidget(
                    url:
                    "https://drive.google.com/file/d/1BgYD42r7yRO1IRmLxv9GQZPA7iZeVDiZ/view",
                    title: "https://drive/реальний/герой",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Презентація зі словами:",
                    style: CustomTextStyle.inter16Bold,
                  ),
                  LinkWidget(
                    url:
                        "https://drive.google.com/file/d/1EdqwjUNbFzETo5dVd913Q4JYm9Dlv8rf/view?usp=sharing",
                    title: "https://drive/реальний/герой/слова",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Тут ви можете знайти багато українського музичного контенту для табору, та відео з рухами до табірної пісні:",
                    style: CustomTextStyle.inter16Bold,
                  ),
                  LinkWidget(title: "apps://telegram", url: "https://t.me/joinchat/AAAAAFXklGmUMlBJSpGuPw"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LinkWidget extends StatelessWidget {
  LinkWidget({
    super.key,
    required this.title,
    required this.url,
  });

  String url;
  String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      },
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.link,
              size: 60,
              color: Color(0xff726fff),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: CustomTextStyle.inter16Bold.copyWith(
                color: const Color(0xff726fff),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
