import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class SceneTextPage extends StatelessWidget {
  SceneTextPage({Key? key, required this.title, required this.text1, required this.text2}) : super(key: key);

  String title;
  String text1;
  String text2;

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
        ),
      ),
    );
  }
}
