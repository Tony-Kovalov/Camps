import 'package:camps_program/features/home_menu/data/program3_data2.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/download_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../custom_text_styles.dart';

class DesignPage3 extends StatelessWidget {
  const DesignPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffffffff), Color(0xff46a6ff)],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Дизайн та поліграфія",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  Program3Data2.designAndPoligraphy,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 40),
                const Text(
                  "Всі файли для друку",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 20),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1xN35BepjzDBOd0Z0RrPW2seTnvh6J11Q?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Логотип",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.logoText,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/logo3_2.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1aT5Wl8VsWhJ8so4smGqdlPB39QjbxlbL?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Банер",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.bannerText,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/banner3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1Yn8m4f9tupGLn9HIt5Vxu0UP9DuhJnTZ?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Футболки",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.tShirtText,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/tshirt3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1xMVHNzunwM003NkDuXRKLGZ5JqBw9g1g?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Бейджик",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.badgeText,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/badge3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1SIrnH2UItYwpRFo5Q8gHh12PLJUlp_1E?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Прапор",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.flagText,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/flag3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1li0F-5HyMoSu63ll49k5xzQWjqJBv9uJ?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Наліпки",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.stickersText,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/sticker3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1wwT2CLbpW3rEeV-rKu78M1KCQxoCiAPE?usp=sharing");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Рекламні банери",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.adsBannersText,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/ads_banner3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1Ogb8v1m1II4HsKcnmIxPZxeCRydKrYU0?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Лист для тексту А4",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.paperA4,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/paper3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1GeEjd4OFTZjcXgnQ2Ifd9OodlOwZSgri?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Банери для сцени",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.bannerForScenes,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          "images/banner_for_scene3_1.png",
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          "images/banner_for_scene3_2.png",
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          "images/banner_for_scene3_3.png",
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          "images/banner_for_scene3_4.png",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/134-J1jpIF3paLL3aj-ojGEZ0x9DQqsm3?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Назви команд",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.teamNames,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/team_names3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1DSl9NFbbn_xvY4TIqQWzs4ZB5nFZF3UJ?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Табірна валюта",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                Text(
                  Program3Data2.campCurrency,
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/camp_currency3.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1LxBqsIqyZdEME0slrhCwgoI9iPbSL38P?usp=drive_link");
                  },
                  bgColor: const Color(0xccffffff),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // todo Tony
      throw 'Could not launch $url';
    }
  }
}
