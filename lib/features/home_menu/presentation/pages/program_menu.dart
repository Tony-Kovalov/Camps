import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/simple_text_page.dart';
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
                      open(context, SceneTextPage(title: "День 1", text1: ScenesData().firstMorningScene, text2: ScenesData().firstEveningScene,));
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
                title: "День 2",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Сцена", text1: ScenesData().firstMorningScene));
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
                title: "День 3",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Сцена", text1: ScenesData().firstMorningScene));
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
                title: "День 4",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      // open(context, SceneTextPage(title: "Сцена", text1: ScenesData().firstMorningScene));
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
                      // open(context, SceneTextPage(title: "Сцена", text1: ScenesData().firstMorningScene));
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
