import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/pdf_screen.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_activities.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_history_channel.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_scenariy.dart';
import 'package:camps_program/features/home_menu/presentation/pages/video_page.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/custom_scene_menu_item.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class SceneTextPage extends StatefulWidget {
  SceneTextPage(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.urlOnDrive,
      required this.historyChannelText,
      required this.historyChannelUrl})
      : super(key: key);

  String text1;
  String text2;
  String urlOnDrive;
  String historyChannelText;
  String historyChannelUrl;

  @override
  State<SceneTextPage> createState() => _SceneTextPageState();
}

class _SceneTextPageState extends State<SceneTextPage> {
  List<bool> topItemsState = [true, false, false, false, false];

  bool showFullScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (topItemsState[4] != true || !showFullScreen)
          ? AppBar(
              centerTitle: true,
              title: Text(getTitle(topItemsState)),
            )
          : null,
      body: Container(
        color: AppColors.primaryWhite,
        height: double.maxFinite,
        child: Padding(
          padding: (topItemsState[4] != true || !showFullScreen) ? const EdgeInsets.only(left: 8, top: 16, right: 8, bottom: 16) : EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Visibility(
                    visible: topItemsState[4] != true || !showFullScreen,
                    child: Row(
                      children: [
                        CustomSceneMenuItem(
                            title: "Сценарій",
                            isActive: topItemsState[0],
                            onTap: () {
                              setState(() {
                                topItemsState = [true, false, false, false, false];
                              });
                            }),
                        const SizedBox(width: 10),
                        CustomSceneMenuItem(
                            title: "Ted talks",
                            isActive: topItemsState[1],
                            onTap: () {
                              setState(() {
                                topItemsState = [false, true, false, false, false];
                              });
                            }),
                        const SizedBox(width: 10),
                        CustomSceneMenuItem(
                            title: "Активності",
                            isActive: topItemsState[2],
                            onTap: () {
                              setState(() {
                                topItemsState = [false, false, true, false, false];
                              });
                            }),
                        const SizedBox(width: 10),
                        CustomSceneMenuItem(
                            title: "History channel",
                            isActive: topItemsState[3],
                            onTap: () {
                              setState(() {
                                topItemsState = [false, false, false, true, false];
                              });
                            }),
                        const SizedBox(width: 10),
                        CustomSceneMenuItem(
                            title: "Video Formula 1",
                            isActive: topItemsState[4],
                            onTap: () {
                              setState(() {
                                topItemsState = [false, false, false, false, true];
                              });
                            }),
                        const SizedBox(width: 10),
                      ],
                    ),
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
    } else if (topItemsState[1] == true) {
      return Container();
    } else if (topItemsState[2] == true) {
      return SceneActivities();
    } else if (topItemsState[3] == true) {
      return SceneHistoryChannelPage(text: widget.historyChannelText, urlOnDrive: widget.historyChannelUrl);
    } else {
      return VideoPage(
        url: "https://www.youtube.com/watch?v=JpMDI3IBXAo&ab_channel=KoloDruzivLviv",
        onFullScreenChanged: (isFullScreen) {
          setState(() {
            showFullScreen = isFullScreen;
          });
        },
      );
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
