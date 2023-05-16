import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/first_day_stations_10_14.dart';
import 'package:camps_program/features/home_menu/presentation/pages/simple_text_page.dart';
import 'package:camps_program/features/home_menu/presentation/pages/stations_first_day.dart';
import 'package:camps_program/features/home_menu/presentation/pages/stations_second_day.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/expandable_menu.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/second_menu_card.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/sub_menu_card.dart';
import 'package:flutter/material.dart';

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
                    title: "Станції 6-9",
                    onTap: () {
                      open(context, StationsFirstDay());
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      open(context, FirstDayStations10_14Page());
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Піт-стоп", text1: ScenesData().firstEveningScene));
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
                    title: "Станції 6-9",
                    onTap: () {
                      open(context, const StationsSecondDay());
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 10-14", text1: ScenesData().firstEveningScene));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Піт-стоп", text1: ScenesData().firstEveningScene));
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
                    title: "Станції 6-9",
                    onTap: () {
                       // open(context, const StationsFirstDay());
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 10-14", text1: ScenesData().firstEveningScene));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Піт-стоп", text1: ScenesData().firstEveningScene));
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
                    title: "Станції 6-9",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 6-9", text1: ScenesData().firstEveningScene));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 10-14", text1: ScenesData().firstEveningScene));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Піт-стоп", text1: ScenesData().firstEveningScene));
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
                    title: "Станції 6-9",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 6-9", text1: ScenesData().firstEveningScene));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Станції 10-14", text1: ScenesData().firstEveningScene));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп",
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
}
