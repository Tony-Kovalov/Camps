import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/custom_scene_menu_item.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class SceneTextPage extends StatelessWidget {
  SceneTextPage({Key? key, required this.title, required this.text1, required this.text2, required this.urlOnDrive}) : super(key: key);

  String title;
  String text1;
  String text2;
  String urlOnDrive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, top: 16, right: 8, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomSceneMenuItem(title: "Сценарій", onTap: () {

                    }),
                    const SizedBox(width: 10),
                    CustomSceneMenuItem(title: "Ted talks", onTap: () {

                    }),
                    const SizedBox(width: 10),
                    CustomSceneMenuItem(title: "Активності", onTap: () {

                    }),
                    const SizedBox(width: 10),
                    CustomSceneMenuItem(title: "History channel", onTap: () {

                    }),
                    const SizedBox(width: 10),
                    CustomSceneMenuItem(title: "Video Formula 1", onTap: () {

                    }),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: SingleChildScrollView(
                        child: HtmlWidget(text1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: SingleChildScrollView(
                        child: HtmlWidget(text2),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DownloadButton(onPressed: () {
                _launchURL();
              },),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    final uri = Uri.parse(urlOnDrive);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else { // todo Tony
      throw 'Could not launch $urlOnDrive';
    }
  }

}
