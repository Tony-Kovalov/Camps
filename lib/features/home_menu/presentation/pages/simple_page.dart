import 'package:camps_program/features/home_menu/presentation/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class SimplePage extends StatelessWidget {
  SimplePage({Key? key, required this.title, required this.text, required this.urlOnDrive}) : super(key: key);

  String title;
  final String text;
  final String urlOnDrive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
