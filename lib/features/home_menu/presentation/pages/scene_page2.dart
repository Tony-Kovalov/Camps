import 'package:camps_program/features/home_menu/presentation/pages/scene_activities.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_history_channel.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_scenariy2.dart';
import 'package:camps_program/features/home_menu/presentation/pages/video_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_scene_menu_item2.dart';

class SceneTextPage2 extends StatefulWidget {
  const SceneTextPage2({
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
  State<SceneTextPage2> createState() => _SceneTextPageState2();
}

class _SceneTextPageState2 extends State<SceneTextPage2> {
  List<bool> topItemsState = [true, false, false, false];

  bool showFullScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: (topItemsState[3] != true || !showFullScreen)
          ? AppBar(
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Color(0xfffcfcfe), Color(0xffa6a7ff)],
                  ),
                ),
              ),
              elevation: 0.0,
              title: const Text(
                "Сцена",
                style: TextStyle(fontFamily: 'Inter', fontSize: 16),
              ),
            )
          : null,
      body: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffa6a7ff), Color(0xff2520FF)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Visibility(
                  visible: topItemsState[3] != true || !showFullScreen,
                  child: Row(
                    children: [
                      CustomSceneMenuItem2(
                          title: "Сценарій",
                          isActive: topItemsState[0],
                          onTap: () {
                            setState(() {
                              topItemsState = [true, false, false, false];
                            });
                          }),
                      const SizedBox(width: 10),
                      CustomSceneMenuItem2(
                          title: "Відео",
                          isActive: topItemsState[1],
                          onTap: () {
                            setState(() {
                              topItemsState = [false, true, false, false];
                            });
                          }),
                      const SizedBox(width: 10),
                      CustomSceneMenuItem2(
                          title: "Презентації",
                          isActive: topItemsState[2],
                          onTap: () {
                            setState(() {
                              topItemsState = [false, false, true, false];
                            });
                          }),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              getWidget(topItemsState),
            ],
          ),
        ),
      ),
    );
  }

  Widget getWidget(List<bool> topItemsState) {
    if (topItemsState[0] == true) {
      return SceneScenariy2(
          text1: widget.text1,
          text2: widget.text2,
          urlOnDrive: widget.urlOnDrive);
    } else if (topItemsState[1] == true) {
      return const SceneActivities();
    } else if (topItemsState[2] == true) {
      return SceneHistoryChannelPage(
          text: widget.historyChannelText,
          urlOnDrive: widget.historyChannelUrl);
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
}
