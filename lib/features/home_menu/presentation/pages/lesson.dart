import 'package:camps_program/features/home_menu/presentation/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({Key? key, required this.text, required this.urlOnDrive}) : super(key: key);

  final String text;
  final String urlOnDrive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Піт-стоп"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: HtmlWidget(text),
                ),
              ),
              const SizedBox(height: 20),
              DownloadButton(onPressed: (){
                _launchURL();
              }),
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
