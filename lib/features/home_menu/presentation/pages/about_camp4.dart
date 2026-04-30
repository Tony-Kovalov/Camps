import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../data/program4_data.dart';
import '../widgets/sub_menu_card3.dart';
import 'info_page_3bloc.dart';
import 'info_page_1bloc.dart';

class AboutCamp4Page extends StatefulWidget {
  const AboutCamp4Page({super.key});

  @override
  State<AboutCamp4Page> createState() => _AboutCamp4PageState();
}

class _AboutCamp4PageState extends State<AboutCamp4Page> {
  bool isFullScreen = false;
  YoutubePlayerController? _controller;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
    ]);

    String? videoId = YoutubePlayer.convertUrlToId(
        "https://youtu.be/iFLAIHl8Yyc?si=R-l459vaM5ovsiI-");
    _controller = YoutubePlayerController(
      initialVideoId: videoId ?? "",
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
      liveUIColor: Colors.blueAccent,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: !isFullScreen
          ? AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
      )
          : null,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F172A),
              Color(0xFF1E293B),
              Color(0xFF020617),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: !isFullScreen
                ? const EdgeInsets.symmetric(horizontal: 24)
                : EdgeInsets.zero,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!isFullScreen) ...[
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text("🕵️‍♂️", style: TextStyle(fontSize: 40)),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "INFO CASE",
                              style: TextStyle(
                                color: Colors.blueAccent[100],
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                            const Text(
                              "Про програму",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],

                  // YOUTUBE ПЛЕЄР
                  ClipRRect(
                    borderRadius: BorderRadius.circular(isFullScreen ? 0 : 16),
                    child: YoutubePlayerBuilder(
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
                  ),

                  if (!isFullScreen) ...[
                    const SizedBox(height: 24),

                    // НОВІ ВКЛАДКИ
                    _buildMenuCard(context, "📖 Загальний опис легенди", Program4Data.campLegendTxt),
                    _buildMenuCard(context, "🕵️‍♂️ Назви команд", Program4Data.teamNamesTxt),
                    _buildMenuCard(context, "🗺️ Система мотивації", Program4Data.motivationSystemTxt),
                    _buildMenuCard(context, "🚀 Післятабірні зустрічі", Program4Data.postCampMeetingsTxt),
                    _buildMenuCard(context, "⏱️ Інструкція до таймера", Program4Data.timerInstructionTxt),

                    const SizedBox(height: 50),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Віджет для вкладок, які відкривають текст
  Widget _buildMenuCard(BuildContext context, String title, List<String> texts) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SubMenuCard3(
        title: title,
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoPage3Bloc(
              title: title,
              texts: texts,
              images: null,
              titleStyle: PageTitleStyle.underAppBar,
              bgLinearGradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Віджет для вкладок, які одразу відкривають посилання (напр. Telegram)
  Widget _buildLinkCard(String title, String url) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SubMenuCard3(
        title: title,
        onTap: () async {
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
      ),
    );
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