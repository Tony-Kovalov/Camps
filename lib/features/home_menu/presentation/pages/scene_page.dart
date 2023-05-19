import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_activities.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_scenariy.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/custom_scene_menu_item.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class SceneTextPage extends StatefulWidget {
  SceneTextPage({Key? key, required this.text1, required this.text2, required this.urlOnDrive})
      : super(key: key);

  String text1;
  String text2;
  String urlOnDrive;

  @override
  State<SceneTextPage> createState() => _SceneTextPageState();
}

class _SceneTextPageState extends State<SceneTextPage> {
  List<bool> topItemsState = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(getTitle(topItemsState)),
      ),
      body: Container(
        color: AppColors.primaryWhite,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 16, right: 8, bottom: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomSceneMenuItem(
                          title: "Сценарій",
                          isActive: topItemsState[0],
                          onTap: () {
                            setState(() {
                              topItemsState = [!topItemsState[0], false, false, false, false];
                            });
                          }),
                      const SizedBox(width: 10),
                      CustomSceneMenuItem(
                          title: "Ted talks",
                          isActive: topItemsState[1],
                          onTap: () {
                            setState(() {
                              topItemsState = [false, !topItemsState[1], false, false, false];
                            });
                          }),
                      const SizedBox(width: 10),
                      CustomSceneMenuItem(
                          title: "Активності",
                          isActive: topItemsState[2],
                          onTap: () {
                            setState(() {
                              topItemsState = [false, false, !topItemsState[2], false, false];
                            });
                          }),
                      const SizedBox(width: 10),
                      CustomSceneMenuItem(
                          title: "History channel",
                          isActive: topItemsState[3],
                          onTap: () {
                            setState(() {
                              topItemsState = [false, false, false, !topItemsState[3], false];
                            });
                          }),
                      const SizedBox(width: 10),
                      CustomSceneMenuItem(
                          title: "Video Formula 1",
                          isActive: topItemsState[4],
                          onTap: () {
                            setState(() {
                              topItemsState = [false, false, false, false, !topItemsState[4]];
                            });
                          }),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                getWidget(topItemsState),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget getWidget(List<bool> topItemsState) {
    if (topItemsState[0] == true) {
      return SceneScenariy(text1: widget.text1, text2: widget.text2, urlOnDrive: widget.urlOnDrive);
    } else if (topItemsState[2] == true) {
      return SceneActivities();
    } else {
      return Container();
    }
  }

  String getTitle(List<bool> topItemsState) {
    if (topItemsState[0] == true) {
      return "Сценарій";
    } else if (topItemsState[1] == true) {
      return "Ted talks";
    } else if (topItemsState[2] == true) {
      return "Активності";
    } else if (topItemsState[3] == true) {
      return "History Channel";
    } else {
      return "Video Formula 1";
    }
  }

}
