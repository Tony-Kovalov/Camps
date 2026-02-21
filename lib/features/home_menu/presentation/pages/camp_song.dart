import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../custom_text_styles.dart';

class CampSong extends StatefulWidget {
  const CampSong({super.key});

  @override
  State<CampSong> createState() => _CampSongState();
}

class _CampSongState extends State<CampSong> {
  bool _play = false;
  Duration duration = const Duration(seconds: 0);
  Duration position = const Duration(seconds: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Табірна пісня"),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xfffcfcfe), Color(0xffa6a7ff)],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffa6a7ff), Color(0xff6c69ff)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: const SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Реальний герой",
                    style: CustomTextStyle.inter23Bold,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Посилання на пісню:",
                    style: CustomTextStyle.inter16Bold,
                  ),
                  LinkWidget(
                    url:
                    "https://drive.google.com/file/d/1BgYD42r7yRO1IRmLxv9GQZPA7iZeVDiZ/view",
                    title: "https://drive/реальний/герой",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Презентація зі словами:",
                    style: CustomTextStyle.inter16Bold,
                  ),
                  LinkWidget(
                    url:
                        "https://drive.google.com/file/d/1EdqwjUNbFzETo5dVd913Q4JYm9Dlv8rf/view?usp=sharing",
                    title: "https://drive/реальний/герой/слова",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Тут ви можете знайти багато українського музичного контенту для табору, та відео з рухами до табірної пісні:",
                    style: CustomTextStyle.inter16Bold,
                  ),
                  LinkWidget(title: "apps://telegram", url: "https://t.me/joinchat/AAAAAFXklGmUMlBJSpGuPw"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LinkWidget extends StatelessWidget {
  const LinkWidget({
    super.key,
    required this.title,
    required this.url,
  });

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      },
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.link,
              size: 60,
              color: Color(0xff726fff),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: CustomTextStyle.inter16Bold.copyWith(
                color: const Color(0xff726fff),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
