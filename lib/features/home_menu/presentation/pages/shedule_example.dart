import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class SheduleExamplePage extends StatelessWidget {
  SheduleExamplePage({Key? key}) : super(key: key);

  String text = '''
  <h3>ДЕНЬ 1</h3>
  <b>10:00-10:30</b> реєстрація учасників+цікаві фішечки (розділ Фішки в таборі)<br>
  <b>10:30-11:15</b> програма відкриття<br>
  <b>11:15-11:30</b> зустріч з наставником + фішки<br>
  <b>11:30-12:00</b> станція<br>
  <b>12:00-12:30</b> станція<br>
  <b>12:30-13:00</b> станція<br>
  <b>13:00-13:30</b> станція<br>
  <b>13:30-14:20</b> ПІТ-СТОП (час викладу істини)<br>
  <b>14:20-14:50</b> станція<br>
  <b>14:50-15:00</b> зал програма<br>
  *Далі бонусна година для підлітків , коли залишаються підліткові команди та вся лідерська команда разом проводять час (є розділ Година для підлітків з ідеями)<br>
  <br>
  <h3>ДЕНЬ 2</h3>
  <b>10:00-10:30</b> програма<br>
  <b>10:30-11:00</b> станція<br>
  <b>11:00-11:30</b> станція<br>
  <b>11:30-12:30</b> ПІТ-СТОП<br>
  <b>12:30-13:00</b> станція<br>
  <b>13:00-13:30</b> станція<br>
  <b>13:30-14:00</b> станція<br>
  <b>14:00-14:30</b> створюємо машину велику, яку можна на святі батьків представити<br>
  <b>14:30-15:00</b> програма<br>
  *Далі бонусна година для підлітків<br>
  <br>
  <h3>ДЕНЬ 3</h3>
  <b>10:00-10:40<b></b> програма<br>
  <b>10:40-14:00<b></b> бізнес гра “Життя 2.0”<br>
  (За необхідністю для найменших прописані станції на цей час)<br>
  <b>14:00-15:00</b> ПІТ-СТОП<br>
  <b>14:30-15:00</b> програма<br>
  *Далі бонусна година для підлітків<br>
  <br>
  <h3>ДЕНЬ 4</h3>
  <b>10:00-10:30</b> створення відео представлення авто на свято для батьків<br>
  <b>10:30-11:00</b> програма<br>
  <b>11:00-12:30</b> квест “Шлях”<br>
  <b>12:30-13:10</b> підготовка до програми для батьків + фішки<br>
  <b>13:10-14:00</b> ПІТ-СТОП<br>
  <b>14:00-14:50</b> турнір<br>
  <b>14:10-15:00</b> програма<br>
  *Далі бонусна година для підлітків<br>
  <br>
  <h3>ДЕНЬ 5</h3>
  <b>10:00-10:35</b> програма<br>
  <b>10:35-11:30</b> ПІТ-СТОП<br>
  <b>11:30-13:00</b> загальнотабірка “Гараж”<br>
  <b>13:00-14:00</b> час з наставником + підготовка до свята<br>
  <b>14:00-15:00</b> програма, свято для батьків, виїзд на створених автомобілях<br>
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        title: const Text("Приклад розкладу"),
      ),
      body: Container(
        color: AppColors.primaryWhite,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(padding: const EdgeInsets.all(12), child: HtmlWidget(text)),
                ),
                const SizedBox(height: 20),
                DownloadButton(onPressed: (){
                  _launchURL("https://drive.google.com/file/d/1DWZMfpZfqQCxw5GKqgtLaZrMjq5tRr3-/view?usp=sharing");
                }),
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
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else { // todo Tony
      throw 'Could not launch $url';
    }
  }
}
