import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AboutCampPage extends StatefulWidget {
  const AboutCampPage({Key? key}) : super(key: key);

  @override
  State<AboutCampPage> createState() => _AboutCampPageState();
}

class _AboutCampPageState extends State<AboutCampPage> {
  String text = '''
  <b>5/4</b><br>
  <b>місце, де тренують переможців</b><br>
  <br>
  Ідея табору про те, що в серці кожного українця, кожен з нас побажав цього за станкій рік не один раз. Саме так, - цей табір про Перемогу. <br>
  <br>
  <br>
  Важливо бути готовими до Перемоги, та усвідомити , що важлива перемога на кожному етапі та в кожній сфері життя.<br>
  <br>
  <b>Перший день:</b> говоримо про те, що таке перемога для тебе, робимо наголос, що в першу чергу перемога в тому, щоб перемогти себе, стати кращим, ніж я вчора. Зрозуміти , які цілі ти маєш сьогодні.<br>
  <br>
  <b>Другий день:</b> Підготовка до перемоги<br>
  Потрібно пройти шлях тренувань для досягнення перемоги. Ти не один йдеш до перемоги, хто твоя команда?!<br>
  <br>
  <b>Третій день:</b> Перешкоди до перемоги. за хвилину до перемоги,- часто ми не знаємо, що саме цей час скоро буде, проте ми бачимо перешкоди і можемо здатись , опустити руки, так і не отримати перемогу. Важливо вчитись долати перешкоди. <br>
  <br>  
  <b>Четвертий день:</b> Перемога, Я в перемозі! Яким я став в момент перемоги, що думаю, що говорю, чи вдячний всім, хто йшов в цій дорозі зі мною. При підготовці просив в Бога допомогу, а в момент перемоги думаємо, що це ми такі круті. Побачити себе в перемозі та вміти бачити та цінувати маленькі перемоги на шляху до великої.<br>
  <br>
  <b>П'ятий день:</b> А що далі після перемоги?!<br>
  Кожна перемога - це крок до наступної. Тому немає завершення табору, бо кожен фініш - це по ідеї старт.<br>
  <br>
  <br><br>
  Чому 5/4, бо саме цей вірш з 1 послання Івана 5:4 став головним віршем табору.<br>
  <br>
  «Бо кожен, хто народився від Бога, перемагає світ.»<br>
  Перше Послання Іоана 5:4<br>
  <br>
  Саме тому механік Іван головний в Гаражі, який тренує Героя.<br>
  <br>
  <b>Загальні завдання</b><br>
  <br>
  <b>1 загальне завдання</b><br>
  щодня робити нове опитування по темі Шукаємо Чемпіона<br>
  <br>
  На стилізованому плакаті (прикрасіть стікерами роздрукованими прапорців і різних елементів табору).<br>
  <br>
  1 день: Чемпіон, який переміг себе. <br>
  2 день: Чемпіон, який допоміг комусь. <br>
  3 день: Чемпіон, який сьогодні зробив зарядку. <br>
  4 день: Чемпіон, який навчився нового сьогодні. <br>
  5 день: Чемпіон, який прийде на післятабірну зустріч 14 серпня 2023 о 14 годині. <br>
  <br>
  <b>2 загальне завдання</b><br>
  Важливо, щоб кожна команда з деталей зробила свій болід (машину для гонок).<br>
  Для цього потрібно картон, елементи кутники для з'єднання, фарба, валік для дизайну.<br>
  <br>
  На святі для батьків всі ці боліли можуть бути візитною карткою для команд.<br>
  <br>
  <b>3 загальне завдання</b><br>
  - розгадайте номерний знак команди<br>
  Кожна команда - це болід на гонках, номерний знак відповідає золотому віршу кожного дня, про це класно поставити запитання на день 2-3 чи догадаються що означають їх номерні знаки.<br>
  В кожної команди є свій прапор. <br>
  <br>
  <b>4 загальне завдання</b><br>
  Розмалювати по номерках (кожен номер - окремий колір) гігантську розмальовку на весь табір.<br>
  <br>
  <b>5 загальне завдання</b><br>
  Є машини, які можна роздрукувати в гігантському розмірі і теж давати як завдання дня, - особливо для найменших.<br>
  <br>
  <b>6 загальне завдання</b> <br>
  В кожного є роздрукований блокнот, який заповнюють на Піт стопах, краще хай залишають його в таборі, а в останній день віддати.<br>
  ''';

  YoutubePlayerController? _controller;

  bool isFullScreen = false;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
    ]);

    String? videoId = YoutubePlayer.convertUrlToId("https://youtu.be/9BrBc28OsCM");

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
      appBar: !isFullScreen ? AppBar(elevation: 0, title: const Text("ПРО ТАБІР", style: TextStyle(fontWeight: FontWeight.bold))) : null,
      body: Container(
        color: AppColors.primaryWhite,
        child: Padding(
          padding: !isFullScreen ? const EdgeInsets.only(left: 12, bottom: 12, right: 12) : EdgeInsets.zero,
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
                    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: HtmlWidget(text),
                  ),
                ),
              ],
            ),
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

}
