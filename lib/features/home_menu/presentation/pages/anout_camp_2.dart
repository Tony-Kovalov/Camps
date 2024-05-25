import 'package:camps_program/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AboutCamp2Page extends StatefulWidget {
  const AboutCamp2Page({Key? key}) : super(key: key);

  @override
  State<AboutCamp2Page> createState() => _AboutCamp2PageState();
}

class _AboutCamp2PageState extends State<AboutCamp2Page> {
  String text1 = '''
  <h3>Загальні рекомендації по програмі:</h3>
  <p><b>Ціль програми:</b> <i>показати учасникам, що реальне життя з Христом цікавіше та змістовніше від життя у віртуальному світі.</i></p>
  <p>Ігри залишаться в твоєму житті - і це добре, але ми хочемо навчити, що слід не дати їм знищити твою ідентичність.</p>
  <p>Кожен вибір впливає, - яким буде переломний момент твоєї історії.</p>
  <p>Чи обереш ти: бути в команді, яка змінює світ?! Чи скажеш, що ще занадто малий?! Або ж найдеш іншу причину.</p>
  <p>Щодня учасники будуть отримувати  практичні лайфхаки, як діяти, коли робиш вибір між Реальним та Віртуальним світом, коли життя захоплює гонитва за лайками, як прокачувати скіли/навики, мати друзів, які задля тебе розберуть дах, та впливати на життя своїх однолітків.</p>
  <p><b>Програма денного табору розрахованого на 5 днів.</b></br>
   <b>Віковий діапазон:</b> 6-14р.</br>
   Тому є станції для різних вікових груп, а також загальнотабірки.</p>
  <p>Складаючи план дня рекомендуємо час для ЧАТу (біблійні зустрічі) виділити одночасно для всіх команд. До проведення цієї зустрічі можна залучити і програмників, якщо вам потрібно допомогти, підсилити когось з наставників або групи занадто великі та на цей час краще їх розділити.</p>
  <p>Для створення відео головної сценки та пісні було використано АІ.</p>
  <p>Долучайтесь до групи в телеграмі по даній програмі, діліться ідеями, результатами.</p>
  </br>
  <p>І обовязково проведіть післятабірну зустріч. Адже матеріалів в програмі достатньо і для неї. А після неї проведіть ще одну <textarea style="color:red;"> - саме так у вас розпочнуться неймовірні клуби, де всі полюблять життя з Христом, яке змінює цей світ.</textarea></p>
  ''';

  YoutubePlayerController? _controller;

  bool isFullScreen = false;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
    ]);

    String? videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=pK_mRRHt2bE&ab_channel=KoloDruzivLviv");

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

    return Scaffold(
      appBar: !isFullScreen
          ? AppBar(
              title: const Text("Про табір"),
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
            )
          : null,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                builder: (BuildContext, Widget) {
                  return Column(
                    children: [
                      player,
                    ],
                  );
                },
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: HtmlWidget(text1),
                ),
              ),
            ],
          ),
        ),
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
