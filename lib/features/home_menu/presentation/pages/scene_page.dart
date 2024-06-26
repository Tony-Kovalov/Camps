import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_activities.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_history_channel.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_scenariy.dart';
import 'package:camps_program/features/home_menu/presentation/pages/video_page.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/custom_scene_menu_item.dart';
import 'package:flutter/material.dart';

class SceneTextPage extends StatefulWidget {
  const SceneTextPage({
    Key? key,
    required this.text1,
    required this.text2,
    required this.urlOnDrive,
    required this.historyChannelText,
    required this.historyChannelUrl,
    required this.videoFormulaUrl,
  }) : super(key: key);

  final String text1;
  final String text2;
  final String urlOnDrive;
  final String historyChannelText;
  final String historyChannelUrl;
  final String videoFormulaUrl;

  @override
  State<SceneTextPage> createState() => _SceneTextPageState();
}

class _SceneTextPageState extends State<SceneTextPage> {
  List<bool> topItemsState = [true, false, false, false];

  bool showFullScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (topItemsState[3] != true || !showFullScreen)
          ? AppBar(
              elevation: 0.0,
              centerTitle: true,
              title: Text(getTitle(topItemsState)),
            )
          : null,
      body: Container(
        color: AppColors.primaryWhite,
        height: double.maxFinite,
        child: Padding(
          padding: (topItemsState[3] != true || !showFullScreen)
              ? const EdgeInsets.only(left: 8, top: 0, right: 8, bottom: 16)
              : EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Visibility(
                    visible: topItemsState[3] != true || !showFullScreen,
                    child: Row(
                      children: [
                        CustomSceneMenuItem(
                            title: "Сценарій",
                            isActive: topItemsState[0],
                            onTap: () {
                              setState(() {
                                topItemsState = [true, false, false, false];
                              });
                            }),
                        const SizedBox(width: 10),
                        CustomSceneMenuItem(
                            title: "Активності",
                            isActive: topItemsState[1],
                            onTap: () {
                              setState(() {
                                topItemsState = [false, true, false, false];
                              });
                            }),
                        const SizedBox(width: 10),
                        CustomSceneMenuItem(
                            title: "History channel",
                            isActive: topItemsState[2],
                            onTap: () {
                              setState(() {
                                topItemsState = [false, false, true, false];
                              });
                            }),
                        const SizedBox(width: 10),
                        CustomSceneMenuItem(
                            title: "Video Formula 1",
                            isActive: topItemsState[3],
                            onTap: () {
                              setState(() {
                                topItemsState = [false, false, false, true];
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
      return const SceneActivities();
    } else if (topItemsState[2] == true) {
      return SceneHistoryChannelPage(text: widget.historyChannelText, urlOnDrive: widget.historyChannelUrl);
    } else {
      return VideoPage(
        url: widget.videoFormulaUrl,
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
      return "Активності";
    } else if (topItemsState[2] == true) {
      return "History Channel";
    } else {
      return "Video Formula 1";
    }
  }
}
