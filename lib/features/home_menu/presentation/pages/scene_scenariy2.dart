import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/download_button.dart';

class SceneScenariy2 extends StatelessWidget {
  const SceneScenariy2(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.urlOnDrive})
      : super(key: key);

  final String text1;
  final String text2;
  final String urlOnDrive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            RoundedTextCard(text2: text1),
            const SizedBox(height: 16),
            RoundedTextCard(text2: text2),
          ],
        ),
        const SizedBox(height: 20),
        DownloadButton(
          onPressed: () {
            _launchURL();
          },
        ),
      ],
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

class RoundedTextCard extends StatelessWidget {
  const RoundedTextCard({
    super.key,
    required this.text2,
  });

  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: HtmlWidget(text2),
        ),
      ),
    );
  }
}
