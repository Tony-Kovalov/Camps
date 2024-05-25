import 'package:camps_program/features/home_menu/presentation/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/download_button2.dart';

class DesignPage2 extends StatelessWidget {
  const DesignPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                const Text(
                  "Тут ти знайдеш всі ресурси для офрмлення візуальної частини табору.\nУ мініатюрах відображається тільки приклад дизайну, а самі робочі файли (для друку, та використання)  ти можеш скачати нижче кожної мініатюри за посиланням. \nДеякі елементи завантажуються окремими файлами, а деякі архівом (бо містять в собі кілька окремих файлів).",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 40),
                const Text(
                  "Всі файли для друку",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 20),
                DownloadButton2(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1f8XxbbpwR22QOviTa-Fw1_vIuvVRh2To?usp=sharing");
                }),
                const SizedBox(height: 60),
                const Text(
                  "Логотип",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить логотип для заставки проектору (такий як на прикладі), ч/б варіант, та векторний робочий файл.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/logo2.jpg",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/13fBAaD__s3ltP42yPupD_MfGIWPq0MSX?usp=sharing");
                }),
                const SizedBox(height: 60),
                const Text(
                  "Банер",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для дурку pdf, tiff, та робочий файл Photoshop.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/logo2.jpg",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1tdTLjXKYGxc5gLe7gATLuiDS1rz4pX1V?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Футболки",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить векторний файл для друку та приклад. В архіві три різних дизайни.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/tshirt2.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1PwHQfQmCawaEr8QHB52rRxJosgAIBlhM?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Бейджик",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку pdf, в 2х розмірах. Залежно, які у вас тримачі, ви можете надрукувати необхідний вам розмір.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/badge2.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1LyD-Yg2stkIlU5x5WGns2WTFRG48_9Mr?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Сертифікат",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку pdf, в А5 розмірі.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/certificate2.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1bPRMWEY13FE6Pb5Gw3GKR2ShDa0lMk-t?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Наліпки",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку pdf, квадратному форматі, та векторний файл з дінією для круглої порізки.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/stickers.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1fngkYKVWWlp_ahJIAkKFxkRrD5Ks-64D?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Розмальовка",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку pdf, в розмірі 2х1 метр.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/coloring_pages.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/11oekcbopzemRzat8V2WSl9Pent-Xi7rw?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Табірна валюта (кристали)",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку pdf, в розмірі А4. Окремо файл для кольорового друку, та ч/б.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/camp_currency.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/19N1XpcZA_aVPDlpELbbuk833COO_Vr47?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Планета",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку pdf, друкувати можна в будь-якому розмірі кратному А4.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/planet.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1tVtTrkRjyd4zzPzpfh-s5tr-GQ3bRBQy?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Планшет аватару",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку pdf, в розмірі А4.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/avatar_tablet.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1fjaCR5N9c2pMWCyvmKRifMSjymcvK--G?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Назви команд",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку pdf, в розмірі А4.",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/joystick.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/16txs_IAyPOIOTknM7EW1VqtgF_a9rC7E?usp=sharing");
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  "Усі файли для друку ЧАТ (біблійні уроки)",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.inter23Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "Містить файл для друку в форматі pdf, для проведення біблійних уроків (в загальному файлі посортовано по днях)",
                  style: CustomTextStyle.inter12Grey,
                ),
                const SizedBox(height: 8),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "images/bible_lesson.png",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                DownloadButton2(
                  onPressed: () {
                    _launchURL("https://drive.google.com/drive/folders/1qJFkRLhov_PwI77eop8OFB1CIS1Zzmq2?usp=sharing");
                  },
                ),
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
