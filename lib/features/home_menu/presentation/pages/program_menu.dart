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
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Ранок Сцена", text: ScenesData().firstMorningScene));
                      }),
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Вечір Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Вечір Сцена", text: ScenesData().firstEveningScene));
                      }),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 2",
                children: [
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Ранок Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Ранок Сцена", text: ScenesData().secondMorningScene));
                      }),
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Вечір Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Вечір Сцена", text: ScenesData().secondEveningScene));
                      }),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 3",
                children: [
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Ранок Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Ранок Сцена", text: ScenesData().thirdMorningScene));
                      }),
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Вечір Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Вечір Сцена", text: ScenesData().thirdEveningScene));
                      }),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 4",
                children: [
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Ранок Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Ранок Сцена", text: ScenesData().fourthMorningScene));
                      }),
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Вечір Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Вечір Сцена", text: ScenesData().fourthEveningScene));
                      }),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 5",
                children: [
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Ранок Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Ранок Сцена", text: ScenesData().fifthMorningScene));
                      }),
                  const SizedBox(height: 4),
                  SubMenuCard(
                      title: "Вечір Сцена",
                      onTap: () {
                        open(context, SimpleTextPage(title: "Вечір Сцена", text: ScenesData().fifthEveningScene));
                      }),
                  const SizedBox(height: 4),
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
