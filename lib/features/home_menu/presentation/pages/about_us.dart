import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  final String text = '''
  <p><textarea style="color:white;">Ви, мабуть, задаєтесь питанням: «Хто пише ці програми? Хто ці люди? Чому ці програми безкоштовні і такі актуальні?</textarea></p>
  <p><textarea style="color:white;">Ми - лідери різноманітних організацій, які об’єднанні в одному русі - </textarea><b><textarea style="color:white;">Go play (Істина через гру).</textarea></b> <textarea style="color:white;">Ми об’єднались в Україні, як і тисячі таких самих лідерів по всьому світу в міжнародну спільноту Go play, щоб через різноманітні активності, спорт, ігри, табори і клуби проповідувати і змінювати дітей, підлітків і молодь в учнів Христа.</textarea></p>
  <p><textarea style="color:white;">Ми бачимо, що гра - це найпотужніший інструмент, який досягає будь-яку людину, будь-якого віку і саме це дає нам досягнути і впливати на різні покоління, які живуть у нашій країні. Ми знаємо, що гра - це особливий інструмент, щоб навчати на досвіді і це було цікаво. Ми віримо, що гра - це дружня проповідь, яку ти не зможеш забути ніколи.</textarea>
  </br><textarea style="color:white;">Тому, об’єднані любов’ю до нашого Господа - Ісуса Христа, ми продовжуємо писати і ділитися ресурсами для команд Украіни та всього світу, де є зараз українці, навчаємо діючих лідерів команд і зрошуємо нових, підтримуємо діючі команди і допомагаємо створити нові.</textarea></p>
  <p><b><textarea style="color:white;">Go play Україна</textarea></b> <textarea style="color:white;">- це рух, де кожний може принести і додати особливість своєї організації, свого таланту і свого серця, що «Істина через гру» була ще потужнішою, яскравішою і переконливішою.</textarea>
  </br><textarea style="color:white;">Ми раді, що можемо послужити для вас.</textarea></p>
  <p><textarea style="color:white;">Приєднуйтесь!</textarea></p>
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Про нас"),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xfffcfcfe), Color(0xfff7f6ff)],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xfff7f6ff), Color(0xff5350ff)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset("images/go_play.png")),
              const SizedBox(height: 36),
              HtmlWidget(text),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
