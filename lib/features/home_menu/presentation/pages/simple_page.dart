import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

class SimplePage extends StatelessWidget {
  const SimplePage({
    Key? key,
    required this.title,
    required this.text,
    required this.urlOnDrive,
  }) : super(key: key);

  final String title;
  final String text;
  final String urlOnDrive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        elevation: 0,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
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
              DownloadButton(onPressed: () {
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
    } else {
      // todo Tony
      throw 'Could not launch $urlOnDrive';
    }
  }
}
