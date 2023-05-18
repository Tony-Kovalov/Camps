import 'package:camps_program/features/home_menu/data/lessons_repo.dart';
import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/lesson.dart';
import 'package:camps_program/features/home_menu/presentation/pages/simple_text_page.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/expandable_menu.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/sub_menu_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProgramMenuPage extends StatefulWidget {
  const ProgramMenuPage({Key? key}) : super(key: key);

  @override
  State<ProgramMenuPage> createState() => _ProgramMenuPageState();
}

class _ProgramMenuPageState extends State<ProgramMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Програма табору"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpandableMenu(
                title: "День 1",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(context, SceneTextPage(title: "День 1", text1: ScenesData().firstMorningScene, text2: ScenesData().firstEveningScene, urlOnDrive: "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      _launchURL("https://drive.google.com/file/d/1qPl_6Vn8yDo5wwRwZEhhKf4Hw1nUxf9d/view?usp=sharing");
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 6-9",
                    onTap: () {
                      _launchURL("https://drive.google.com/file/d/1U7VLcNOz7HPLCOtjqZhctFF4HSGZASS9/view?usp=sharing");
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                       open(context, LessonPage(text: LessonsRepo().lesson1Text, urlOnDrive: "https://drive.google.com/file/d/1YIoj5hwaAGEQiqZ8aekfmDEXh76X8tJh/view?usp=sharing",));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 2",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(context, SceneTextPage(title: "День 2", text1: ScenesData().secondMorningScene, text2: ScenesData().secondEveningScene, urlOnDrive: "https://drive.google.com/file/d/17zlHZxCRwQ39kPon4CfiYkgz-5qREOiD/view?usp=share_link",));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      _launchURL("https://drive.google.com/file/d/1FY2n8IbFWjJsgOuOPWG7d1iigIxxtrtO/view?usp=sharing");
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 6-9",
                    onTap: () {
                      _launchURL("https://drive.google.com/file/d/1rCV5g3NlnqE_Te1gUah2qltiFaQME0fo/view?usp=sharing");
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(context, LessonPage(text: LessonsRepo().lesson2Text, urlOnDrive: "https://drive.google.com/file/d/1ZLtTS9lbUZrz8b5inbC9nXre-TPOyKpw/view?usp=sharing",));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 3",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(context, SceneTextPage(title: "День 3", text1: ScenesData().thirdMorningScene, text2: ScenesData().thirdEveningScene, urlOnDrive: "https://drive.google.com/file/d/1ioKB1IyXUjKsZRFQ8J4YY0Rtde23Xo0w/view?usp=share_link",));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Бізнес гра \"Життя 2.0\"",
                    onTap: () {
                       // open(context, const StationsFirstDay());
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(context, LessonPage(text: LessonsRepo().lesson3Text, urlOnDrive: "https://drive.google.com/file/d/14j0VvxoaA_AQ8xGiO0LO7SEFDxMbj8YS/view?usp=sharing",));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 4",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(context, SceneTextPage(title: "День 4", text1: ScenesData().fourthMorningScene, text2: ScenesData().fourthEveningScene, urlOnDrive: "https://drive.google.com/file/d/1diZ7Sgch1X8NvSIfy8tYFxv5vRqXKv8-/view?usp=share_link",));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Квест \"Шлях\"",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 6-9", text1: ScenesData().firstEveningScene));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(context, LessonPage(text: LessonsRepo().lesson4Text, urlOnDrive: "https://drive.google.com/file/d/1dulQ3G8CrhAKlnR8Z4zjweBY_Lqio4TN/view?usp=sharing",));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Турнір",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 10-14", text1: ScenesData().firstEveningScene));
                    },
                  ),

                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 5",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(context, SceneTextPage(title: "День 5", text1: ScenesData().fifthMorningScene, text2: ScenesData().fifthEveningScene, urlOnDrive: "https://drive.google.com/file/d/1d754tigY0M2PIAd23T_zvo_qQE88UgJq/view?usp=share_link",));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Загальнотабірна гра",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 6-9", text1: ScenesData().firstEveningScene));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(context, LessonPage(text: LessonsRepo().lesson5Text, urlOnDrive: "https://drive.google.com/file/d/1bmaLZWiP3ojDQI31pmbFAsXN96RqDcC6/view?usp=sharing",));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Виступ для батьків",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Піт-стоп", text1: ScenesData().firstEveningScene));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else { // todo Tony
      throw 'Could not launch $url';
    }
  }
}
