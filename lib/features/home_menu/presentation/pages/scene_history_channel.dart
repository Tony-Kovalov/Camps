import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app_colors.dart';
import '../widgets/download_button.dart';

class SceneHistoryChannelPage extends StatelessWidget {
  SceneHistoryChannelPage({Key? key, required this.text, required this.urlOnDrive}) : super(key: key);

  String text;
  String urlOnDrive;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryWhite,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: HtmlWidget(text.isNotEmpty ? text : "На цей день history channel не заплановано. Можете використати з минулого уроку або поділитись своїм прикладом :)"),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: text.isNotEmpty,
              child: DownloadButton(
                onPressed: () {
                  _launchURL();
                },
              ),
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
      throw 'Could not launch ${urlOnDrive}';
    }
  }
}
