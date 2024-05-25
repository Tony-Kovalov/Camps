
import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class SceneActivities extends StatelessWidget {
  const SceneActivities({Key? key}) : super(key: key);

  final String text1 = '''
  <strong>ЛЬОДОКОЛИ</strong><br>
  <br>
  <b>1 льодокол</b><br>
  <br>
  <a href="https://youtu.be/bQebzv8sShE" style="background-color: white; color: blue">https://youtu.be/bQebzv8sShE</a><br>
  <br>
  Даєте кожній команді роздруковані цифри від 0 до 9, кожна цифра на окремому листку, добре коли вони за ламіновані.<br>
  Далі називаєте число наприклад 2536 яка команда швидше в правильному порядку підніме ці цифри, — та перемогла. Можна називати номерні знаки. Можна називати великі числа 10573 або 4.523.810 Можна висвітлити на екрані.<br>
  <br>
  Цей льодокол можна грати декілька ранків підряд, та записувати в турнірну таблицю кращий час.<br>
  <br>
  <b>2 льодокол</b><br>
  <br>
  Вгадайте, що всередині.<br>
  <br>
  <a href="https://docs.google.com/presentation/d/1js_yt15VOMT-IpyCfMHsxjbqaQu__AWJ/edit?usp=sharing&ouid=104781512787198930141&rtpof=true&sd=true" style="background-color: white; color: blue">https://docs.google.com/presentation/d/1js_yt15VOMT-IpyCfMHsxjbqaQu__AWJ/edit?usp=sharing&ouid=104781512787198930141&rtpof=true&sd=true</a><br>
  <br>
  <b>3 льодокол</b><br>
  <br>
  Музичний льодокол<br>
  <br>
  <a href="https://youtu.be/tgbYZWfeVaM" style="background-color: white; color: blue">https://youtu.be/tgbYZWfeVaM</a><br>
  <br>
  <b>4 льодокол</b><br>
  <br>
  Будь уважний (можна найти картинки перегонів)<br>
  <br>
  <a href="https://docs.google.com/presentation/d/1MAgTOKKniGh3o85IEZPED43xf0aRb4EN/edit?usp=sharing&ouid=104781512787198930141&rtpof=true&sd=true" style="background-color: white; color: blue">https://docs.google.com/presentation/d/1MAgTOKKniGh3o85IEZPED43xf0aRb4EN/edit?usp=sharing&ouid=104781512787198930141&rtpof=true&sd=true</a><br>
  ''';

  final String text2 = '''
  <strong>ІМПРОВІЗАЦІЯ ШОУ</strong><br>
  <br>
  Сенс шоу(гри) полягає в тому, що учасники імпровізації будуть спілкуватися словами, які починаються на одну і ту саму букву. Загадувати букви для учасників може ведучий, а можуть самі учасники загадати друг другу букву.<br>
  <i style="color:purple">На ведучого ці правила не розповсюджуються.</i><br>
  <br>
  <b>Наприклад:</b><br>
  <br>
  <i style="color:purple">Ведучий запрошує на сцену першого учасника.</i><br>
  <br>
  <b>Ведучий:</b> вже зараз у нас в студії є перший учасник шоу... аплодисменти..І першочергово давайте знайомитися. Як вас звати?<br>
  <b>Учасник1:</b> (який вже має свою букву, наприклад Т) Тамара Тимофіївна..<br>
  <b>Ведучий:</b> прошу привітати Тамару Тимофіївну аплодисментами. Тамара, ви дуже гарно виглядають!<br>
  <b>Учасник1:</b> так..<br>
  <b>Ведучий:</b> а скільки вам років?<br>
  <b>Учасник1:</b> тринадцять (тридцять, тридцять три)<br>
  <b>Ведучий:</b> Тамара, а чим ви займаєтеся?<br>
  <b>Учасник1:</b> таксую<br>
  <b>Ведучий:</b> таксуєте?<br>
  <b>Учасник1:</b> так, так, таксую<br>
  <b>Ведучий:</b> на якій машині?<br>
  <b>Учасник1:</b> така тачка темносиня...Таврія..<br>
  <b>Ведучий:</b> темносиня Таврія? Зрозуміло! Я чув, що у вас з вашою Таврією якісь проблеми?<br>
  <b>Учасник1:</b> так. Там трохи тенькає, терликпє, теліпається...<br>
  <b>Ведучий:</b> І як ви вирішуєте проблему?<br>
  <b>Учасник1:</b> терплю..<br>
  <b>Ведучий:</b> зараз я думаю ми зможемо визначитись, що у вас за проблема з вашим авто тому, що ми запрошуємо на цю сцену другого учасника! Аплодисменти...<br>
  <br>
  <i style="color:purple">Виходить 2 учасник, який має букву (наприклад М)</i><br>
  <br>
  <b>Ведучий:</b> вітаю вас, назвіть ваше ім'я..<br>
  <b>Учасник2:</b> Михайло..<br>
  <b>Ведучий:</b> Михайло, приємно познайомитися! Яка ваша сфера діяльності?<br>
  <b>Учасник2:</b> механік механізмів..<br>
  <b>Ведучий:</b> механік механізмів, ви якраз вчасно! У нашої Тамари Тимофіївни проблема з Таврією.. допоможете?<br>
  <b>Учасник2:</b> мабуть мастило міняти<br>
  <b>Учасник1:</b> так, точно! треба, треба...<br>
  <b>Ведучий:</b> от і розібралися з проблемою..на яку дату домовитесь?<br>
  <b>Учасник1:</b> травень тринадцяте<br>
  <b>Учасник2:</b> можливо!<br>
  ''';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryWhite,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(padding: const EdgeInsets.all(12), child: HtmlWidget(text1)),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(padding: const EdgeInsets.all(12), child: HtmlWidget(text2)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
