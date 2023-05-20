
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app_colors.dart';
import '../widgets/download_button.dart';

class SpeechForTeamPage extends StatelessWidget {
  SpeechForTeamPage({Key? key}) : super(key: key);

  String text = '''
  СЛОВО ДЛЯ КОМАНДИ<br>
  <br>
  <p>Ми команда, таке нібито просте слово, але така важка праця. Багато хто з нас ще вчиться, хтось працює, але попри це ми встигаємо робити так багато добра. Табір - це непросто прийти і щось розказати, чи в щось пограти - це мега велика робота, яка готується заздалегіть. Дякую тому, хто це все придумав і знає як організувати. Ми всі молодці, бо кожного разу справляємось з поставленими задачами. Хочеться подякувати один одному за нас і за зроблену роботу.</p>
  Ми круті!<br>
  <p>Кожна команда під час проведення табору хоч раз стикалась з різними труднощами і кожному з команди хотілося підтримки. Інколи здавалось, що ми забули про нас самих. Ми непросто команда, а друзі, друзі, які підтримують один одного, допомагають, бачуть, де хтось тупить, швидко підхоплюєм і виходимо з ситуаціі. Команда - це коли ми один за одного та один з одним, а не кожен сам за себе.</p>
  <p>Найосновніше це те, що з нами Бог, і з Його рукою ми можемо абсолютно все. Наш табір про перемогу, яка складається з маленьких перемог. Ми, як команда, теж проживаємо цей табір разом з дітьми. Готуючись до табору в нас є багато перешкод, які ми перемагаємо, в проведені табору в нас є багато перешкод, які ми перемагаємо. Та найосновніше, найбільша перемога- це народжені згори діти. Діти, які завдяки нам пізнають Бога ще краще, які пізнають Ісуса і запрошують Його в своє серце, які вчаться жити в силі Духа Святого. Це найбільша перемога для нашого Бога і для нас. Тому радіймо, що в нас є така можливісь, бути частиною великоії Божої команди, голова якій Христос. Я вірю, що нас всіх зібрав Бог, щоб перемагати, тому перемагаймо!</p>
  <p>Внизу пишу список завдань, які потрібно виконувати під час табору, саме нам, як команді, це не для дітей. Це для підтримки один одного, щоб нам не було скучно, будем підбадьорюватись.</p>
  <br>
  <b>Це план на кожен день, Щодня нове завдання.</b><br>
  <br>
  <ul>
  <li>Перед початком табору поблагословити один одного, на легкісь проведення табору. Поблагословити сам табір, щоб він також пройшов легко.</li>
  <li>Рандомно (можна написати на папірчиках своє ім"я, скрутити, і хто кого витягне) обрати когось, кому ви під час всього дня будете говорити підбадьорюючі слова. (ти молодоць, у тебе так круто вийшло..).</li>
  <li>В кінці дня поділитись по двоє, і обговорити сьогоднішній день, помолитись один за одного.</li>
  <li>Таємний подарунок, рандомно обираємо собі когось і під час для зробити, будь-який подарунок, якусь приємність. (подарунок з чого знайдете, можна навіть каву).</li>
  <li>Сідають всі по парах, один навпроти одного та говорять один одному слова вдячності чи добрі слова за цей табір. Коли пройшло 2-3хв, по годинниковій стрілці пересаджуються на сусідній стілець (так щоб партнери мінялись), і так поки не дойдете до першого партнера.</li>
  </ul>
  <br>
  <b>Завдання, які мають виконуватись кожного дня.</b><br>
  <br>
  1) В кімнаті для лідерів прикріпити дзеркало, біля дзеркала маленьку коробочку, в цю коробку кожного дня ставити смаколики.<br>
  <b>А коробку підписувати:</b>(надпис на коробці щодня змінювати, приклади нижче)<br>
  <ul>
  <li>Цукерки для того, щоб з`явились ідеї (якісь шоколадні).</li>
  <li>Цукерки від втоми (шаленна бджілка).</li>
  <li>Для настрою (Бомчик).</li>
  <li>Не гальмуй, залишилось ще два дні табору.</li>
  <li>Цукерка для когось (взяв цукерку і йдеш когось підбадьорювати).</li>
  </ul>
  <br>
  2) Щодня робити фото з командою, в кінці табору зробити плакат з фотками, які разом якось круто підписати кожну фотку, це що було на згадку.<br>
  3) Щодня хтось один з команди готує підбадьорююче слово, обирає собі вірш (можна вірш дня з табору).<br>
  4) Зустріч всієї команди після табору на піці.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        title: const Text("Слово для команди"),
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
                  _launchURL("https://drive.google.com/file/d/1k8TFyOIUsMDKeLP4lXLjyTGUaAFV0eMF/view?usp=sharing");
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