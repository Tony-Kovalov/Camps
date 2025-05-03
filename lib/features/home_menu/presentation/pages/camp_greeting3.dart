import 'package:camps_program/features/home_menu/data/program3_data2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class CampGreeting3 extends StatefulWidget {
  const CampGreeting3({super.key});

  @override
  State<CampGreeting3> createState() => _CampGreeting3State();
}

class _CampGreeting3State extends State<CampGreeting3> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/camp_greeting.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.setLooping(true);
    controller.initialize().then((_) => setState(() {}));
    controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Expanded(child: Text("Привітання")),
            GestureDetector(
              onTap: () {
                _launchURL(
                    "https://drive.google.com/file/d/13tzjDBZ_loHTAeTgYF9mZQchjuD_rqZF/view?usp=drive_link");
              },
              child: const Icon(Icons.save_alt),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffffffff), Color(0xff46a6ff)],
          ),
        ),
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              controller.value.isPlaying ? controller.pause() : controller.play();
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    Program3Data2.campGreeting,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(controller),
                      VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors: const VideoProgressColors(
                            playedColor: Colors.lightBlueAccent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
