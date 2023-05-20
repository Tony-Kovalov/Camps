import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdditionalResPage extends StatelessWidget {
  const AdditionalResPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        title: const Text("Додаткові джерела"),
      ),
      body: Container(
        color: AppColors.primaryWhite,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                resMenuItem("Телеграм чат для служителів клубів", () {
                  _launchURL("https://t.me/christianclubs");
                }),
                const SizedBox(height: 20),
                resMenuItem("Ютуб канал з ідеями для клубів", () {
                   _launchURL("https://www.youtube.com/@kolodruzivlviv6996");
                }),
                const SizedBox(height: 20),
                resMenuItem("Телеграм канал з табірною музикою", () {
                  _launchURL("https://t.me/joinchat/AAAAAFXklGmUMlBJSpGuPw");
                }),
                const SizedBox(height: 20),
                resMenuItem("Телеграм група для зворотнього зв'язку", () {
                  _launchURL("https://t.me/+5kA6uCQz52tkNTg6");
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget resMenuItem(String title, Function() onTap) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: onTap,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Unbounded',
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else { // todo Tony
      throw 'Could not launch $url';
    }
  }
}
