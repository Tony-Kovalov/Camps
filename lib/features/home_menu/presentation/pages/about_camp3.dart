import 'package:camps_program/features/home_menu/data/program3_data.dart';
import 'package:camps_program/features/home_menu/data/program3_data2.dart';
import 'package:camps_program/features/home_menu/presentation/pages/camp_greeting3.dart';
import 'package:camps_program/features/home_menu/presentation/pages/simple_text_page3.dart';
import 'package:camps_program/features/home_menu/presentation/pages/trailer.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/sub_menu_card3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AboutCamp3 extends StatefulWidget {
  const AboutCamp3({super.key});

  @override
  State<AboutCamp3> createState() => _AboutCamp3State();
}

class _AboutCamp3State extends State<AboutCamp3> {
  bool isFullScreen = false;
  YoutubePlayerController? _controller;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
    ]);

    String? videoId = YoutubePlayer.convertUrlToId(
        "https://youtu.be/x09hEBStMdI?si=dKpWQje31HfkvFEs");
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
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
        child: Padding(
          padding: !isFullScreen
              ? const EdgeInsets.symmetric(horizontal: 16)
              : EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Про програму “СкайLand”",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 16),
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
                  player: player,
                  builder: (BuildContext context, Widget widget) {
                    return player;
                  },
                ),
                const SizedBox(height: 24),
                MenuCard3(
                  title: "Перейти на чат табору в телеграм",
                  onTap: () {
                    _launchURL("https://t.me/+_tnENNQHsgE2MDFi");
                  },
                ),
                const SizedBox(height: 16),
                MenuCard3(
                  title: "Загальний опис легенди табору",
                  onTap: () {
                    open(
                        context,
                        SimpleTextPage3(
                          htmlText: Program3Data2.generalDescription,
                        ));
                  },
                ),
                const SizedBox(height: 16),
                MenuCard3(
                  title: "Скачати трейлер для реклами табору",
                  onTap: () {
                    open(context, const TrailerPage());
                  },
                ),
                const SizedBox(height: 16),
                MenuCard3(
                  title: "Назви команд",
                  onTap: () {
                    open(
                        context,
                        SimpleTextPage3(
                          htmlText: Program3Data2.namesOfTheTeam,
                        ));
                  },
                ),
                const SizedBox(height: 16),
                MenuCard3(
                  title: "Привітання табору",
                  onTap: () {
                    open(context, const CampGreeting3());
                  },
                ),
                const SizedBox(height: 16),
                MenuCard3(
                  title: "Реклама післятабірних зустрічей",
                  onTap: () {
                    open(
                        context,
                        SimpleTextPage3(
                          htmlText: Program3Data2.meetingsAfterCamps,
                        ));
                  },
                ),
                const SizedBox(height: 16),
                MenuCard3(
                  title: "Загальні фішечки табору",
                  onTap: () {
                    open(
                      context,
                      SimpleTextPage3(
                        htmlText: Program3Data2.generalMomentsOfCamp,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                MenuCard3(
                  title: "Загальні фішки Царства Божого",
                  onTap: () {
                    open(
                      context,
                      SimpleTextPage3(
                        htmlText: Program3Data2.generalMomentsOfKingdomOfGod,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                MenuCard3(
                  title: "Канал з музикою",
                  onTap: () {
                    _launchURL("https://t.me/joinchat/AAAAAFXklGmUMlBJSpGuPw");
                  },
                ),
                const SizedBox(height: 50),
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

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  void dispose() {
    _controller?.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }
}
