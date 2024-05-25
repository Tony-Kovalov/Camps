import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/download_button.dart';

class SceneScenariy extends StatelessWidget {
  const SceneScenariy({Key? key, required this.text1, required this.text2, required this.urlOnDrive})
      : super(key: key);

  final String text1;
  final String text2;
  final String urlOnDrive;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryWhite,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      child: HtmlWidget(text2),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DownloadButton(
              onPressed: () {
                _launchURL();
              },
            ),
          ],
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
