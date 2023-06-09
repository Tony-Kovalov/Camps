import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class StationsFirstDay extends StatelessWidget {
  const StationsFirstDay({Key? key}) : super(key: key);

  final String text1 = '''
    Команди отримують частини фото території, де проводиться табір, фото частини тіла одного з наставників, того хто був на сцені, чи зустрічав дітей.<br>
    Завдання знайти локацію, чи ту людину, яка зашифрована на фото. Біля локації території можна робити спільне фото з командою.<br>
    На локації виконати міні-завдання:<br>
    - всією командою присісти 10 разів одночасно, взявшись за руки в колі;<br>
    - відгадати загадку;<br>
    -скласти слово (довге) з букв, які будуть на цій локації;<br>
    -стати по місяцю народження, від січня до грудня;<br>
    -відгати ребус по емоджі;<br><br>
  ''';

  final String text2 = '''
    - з сірничків змайструвати будинок (можна зробити за допомогою двохстороннього скотчу, гарячого клею) показати приклад;<br>
    - придумати свій креативний командний рух, який буде відрізняти вас від інших;
  ''';

  final String text3 = '''
    Перш ніж у всіх буде змога обрати стаканчик, команду розділити на 2 групи і вони мають скласти список рис притаманних переможцю. Спочатку вони це обговорюють у своїх групах, потім озвучують це по черзі, лідер записує на великому ватмані. Команди говорять по черзі, повторювати риси не можна, яка команда скаже останньою, учасники тої команди першими зможуть обрати стаканчик. 
    <br>
    Стаканчики з подарунками + завданнями та питаннями на знайомство. В кожному стаканчику є маленький приз: шкарпетки, браслет, брілок, м’ячик, цукерка, чупа-чупс. Стаканчики можуть бути пронумеровані, учасник обирає, який номер йому до вподоби, бере стаканчик, забирає зверху папір, яким був прикритий стакан, читає або питання та відповідає або виконує завдання і тільки після того може отримати приз. Додаткова гра, коли треба передати стаканчик по колу.
    <a href="https://www.instagram.com/reel/Cm6bmRptQ47/?igshid=YmMyMTA2M2Y%3D" style="background-color: white; color: blue">https://www.instagram.com/reel/Cm6bmRptQ47/?igshid=YmMyMTA2M2Y%3D</a>
    <br>
    Проговорити, що важливо боротися з страхами та знайомитись першими, Бог звільнив нас від страху, тому у цій сфері нам важливо показати, що потрібно перемагати.<br>
    <br>
    <b>Можливі питання:</b><br>
    - Якщо б ти міг перенестися в будь-який світовий період, де б ти хотів би пожити і чому?<br>
    - Якби ти міг мати супер силу, яку б ти обрав?<br>
    - Якби ти мав 1млн доларів, куди б ти їх потратив?<br>
    - Яка твоя мрія?<br>
    - Яка твоя найбільша перемога за останній час?<br>
    - Якою ти б був машиною? Опиши<br>
    - Якщо спіймаєш золоту рибку, які три бажання загадаєш?<br>
    <br>
    <b>Можливі завдання:</b><br>
    - Назвати 5 марок автомобілів за 6 секунд;<br>
    - Назвати 3 деталі від машини;<br>
    - Назвати 5 рис харектеру, як потрібно мати гонщику за 6 секунд;<br>
    - Назвати 10 слів, які пов’язані машиною за 10 сек;<br>
    - Показати пантомімою слово «азарт» для всієї команди, вона має відгадати, тільки тоді завдання виконане та можна забрати подарунок;<br>
    - Кожен з команди має назвати марку машину на першу букву свого імені;<br>
  ''';

  final String text4 = '''
  На початку загальна гра на знайомство. Всі учасники стають в коло, долоні як у прикладі на фото.
  ''';

  final String text5 = '''
  <br>
  по колу передають/кажуть своє ім’я. Дати 5 хвилин для досягнення найшвидшого результату у команді, потім розпочати основну гру. Флорбол/фрісбі. Змагання для підкоманд. В житті бувають різні ситуації, суперники, поборотись за гарну оцінку, визнання, наголосити, що обман це не перемога.
  <br>
  ''';

  final String text6 = '''
  Основні правила флорболу:<br>
  - Ділимо учасників на дві команди, в кожного своє поле та ворота для гри;<br>
  - Торкатися м'яча можна тільки ключкою. Ногою дозволяється лише зупиняти м'яч, але не атакувати ворота. Також можна зупинити м'яч корпусом, але без стрибка;<br>
  - Піднімати клюшку вище колін заборонено;<br>
  - Граємо на рахунок, яка команда заб’є більше голів у грі, за визначений час;<br>
  <br>
  Основні правила фрісбі:<br>
  Мета кожної команди – забити гол, а саме: щоб гравець зловив диск у заліковій зоні, яку атакує його команда. Бігати з диском заборонено; натомість, диск передається повітрям будь-якому гравцю своєї команди у будь-якому напрямку. У разі незавершеного пасу, відбувається втрата, і команда, що захищалась, отримує диск і право атакувати, щоб забити гол. Як правило, ігри грають до 15 очок.  (при потребі перечитати правила в інтернеті)
  <br>
  ''';

  final String text7 = '''
    На підлозі розкидані цифри, вдвічі більше, ніж учасників у команді. (якщо 30 учасників, 60 цифр)<br>
    <br>
    Завдання: кожен учасник має стати на дві цифри,(одна нога-одна цифра) так, щоб не стояти на цифрах, які йдуть підряд. (4, 5 одна людина стояти не може)  Потім порахувати попорядку.
    <br><br>
    Всі учасники відходять від основного поля гри. Після пояснення завдань та правил, варто дати 5 хв на стратегію для команди.<br><br>
    Секундомір вмикається, коли учасники забігли в кімнату, територію/поле гри, стали кожен на дві цифри. Вимикається, коли закінчили рахувати. Для команди добитись найменшого часу, за який вони виконають це завдання. 
    <br><br>
    Робимо кілька раундів, щоб була змога досягнути кращого результату, тобто виконати це завдання за найменшу кількість часу. Результати записувати у таблицю.
    <br><br>
    <i style="color:purple">Ремарка для ведучого: після кожного раунду мотивувати учасників, що вони можуть більше, не здаватись пробувати.</i><br><br>
    Варіант рефлексії (обговорення зворотнього зв’язку) після гри: кожен має вибрати тварину, яку ви попередньо роздрукували. (можна деякі в кількох екземплярах)<br>
    Приклади тварин: лінивець, хом’як, кіт, пес, лев, коала, лисиця….Потім діти згідно до цієї тварини розказують, як вони себе почували. « Я почував себе у цій грі як собачка, бо я просто виконував те, що мені скажуть, я відчував себе як лінивець , бо навколо всі шось робили, а я не встигав)
    <br><br><br>
    Проговорити, не здаватись, завжди прагнути більшого, нам дані люди в житті, друзі, сім’я, всі маємо взаємовідносини часто і непорозуміння, образи – це потрібно перемагати разом для якісного життя.
    <br>
    При потребі заміни чи додаткової бонусної гри: Групі в 10 чоловік необхідно простояти 30 секунд, використовуючи всього лише 4-5 кінцівки або точки опори, дивимось залежно від віку команди та їх можливостей (для прикладу: на команду 10 людей можна використати 3 ноги, дві руки…)
  ''';

  final String text8 = '''
  <strong>Гра на знайомство:</strong> всі учасники стають в коло, один ведучий стає посередині, називає два імені, ті чиї імена прозвучали, мають помінятись місцями між собою, а ведучий за  ой час зайняти місце одного з них, хто не встиг встати в коло стає ведучим. Пізніще можна називати 3-4 імені.<br>
  <strong>Загальна скакалка.</strong> Команда обирає двох учасників, що крутитимуть скакалку. (або це роблять наставники). На сигнал ведучого перший учасник стрибає через скакалку. Один раз вдалось – приєднується інший учасник команди, вийшло ще раз – третій, вже стрибають троє. Завдання: зробити рекорд з своєю командою на найбільшу кількість стрибків підряд разом.<br>
  Для скакалки великої використовувати канат.
  ''';

  final String text9 = '''
  <strong style="color:red">Індивідуальний кращий результат.</strong>
  Кінці вушних паличок чи звичайних паличок дерев’яних зафарбувати в різні кольори, за допомогою яких потрібно скласти фігури, яку показує ведучий, відповідно до кольорів на кінці палички. (схеми відмалювати від руки).<br>
  <br>
  Кожен учасник отримує набір паличок і змагаються за найвищий кращий результат.Тут важливо показати, що часто нам приходиться перемагати себе, бо ми живемо своє життя, і команда замість нас у житті перемагати не буде, і важливо робити малі перемоги у своєму житті. Перемога це тоді коли ти сьогодні кращий, ніж був вчора, а якщо зупинишся на тому, що маєш не отримаєш перемогу.<br>
  Записувати результат кожного учасника на стікеру перед ним.
  ''';

  final String text13 = '''
  В кімнаті окреслити межі, надути шарік, дати дрібні м’ячик та відро.<br><br>
  Всі м’ячики перед грою розкидані в периметрі, в якому проходить гра, завдання учасника, поки шарік у повітрі закинути всі м’ячики у відро, якщо шарік торкнувся землі, грає наступний учасник. Під час гри учасник підбиває м’яч, щоб він тримався у повітрі.<br<br>
  <br>
  <a href="https://www.instagram.com/reel/CqoZSzxvsmm/?igshid=YmMyMTA2M2Y%3D" style="background-color: white; color: blue">https://www.instagram.com/reel/CqoZSzxvsmm/?igshid=YmMyMTA2M2Y%3D</a>
  <br>
  ''';

  final String text14 = '''
  2) Активна гра, якщо команда складається більш ніж з 12-15 учасників. (можна грати як загальну гру на сцені в залі для усіх учасників) Вмикаємо активну музику, коли ведучий каже слово, завдання відтворити ту фігуру, яку назвав ведучий.
  <br>
  Фігури, які є у відео:<br>
  - Крендель <br>
  - Стрибок кохання (можна замінити на : стрибок переможця)<br>
  - Курка в курнику<br>
  - Птах у клітці<br>
  - Собака у будці<br>
  - Курячий суп<br>
  - Рюкзак<br>
  - Літак<br>
  ''';

  final String text15 = '''
  3) Тік-ток для учасників команд (можна дати як домашнє завдання) Кинути у тік-ток чи інсту, позначити вашу сторінку, якщо вона є та наступного дня отримати приз. (Буде працювати як реклама вашого табору та поширення інформації про нього)<br>
  <a href="https://www.instagram.com/reel/CpUfjczDV7d/?igshid=YmMyMTA2M2Y%3D" style="background-color: white; color: blue">https://www.instagram.com/reel/CpUfjczDV7d/?igshid=YmMyMTA2M2Y%3D</a>
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Станції"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "1. ФОТОПОЛЮВАННЯ",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      HtmlWidget(text1),
                      const Text("(1. Крижане  серце)"),
                      Image.asset("images/stations1_1.png"),
                      const Text("(2. Рататуй)"),
                      Image.asset("images/stations1_2.png"),
                      const Text("(3. Король лев)"),
                      Image.asset("images/stations1_3.png"),
                      const SizedBox(height: 10),
                      HtmlWidget(text2),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "2. Виконай-отримай нагороду",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      HtmlWidget(text3),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "3. Рухайся та перемагай",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      HtmlWidget(text4),
                      Row(
                        children: [
                          Flexible(child: Image.asset("images/stations1_4.png")),
                          Flexible(child: Image.asset("images/stations1_5.png")),
                        ],
                      ),
                      HtmlWidget(text5),
                      HtmlWidget(text6),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "4.",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      HtmlWidget(text7),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "5.",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      HtmlWidget(text8),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "6.",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      HtmlWidget(text9),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Додаткові варіанти активностей для дітей, якщо потрібна додаткова гра, чи  заміна",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text("1)"),
                      Image.asset("images/stations3_1.png"),
                      HtmlWidget(text13),
                      HtmlWidget(text14),
                      HtmlWidget(text15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
