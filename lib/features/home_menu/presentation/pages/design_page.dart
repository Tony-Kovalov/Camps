import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/design_container.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Дизайн табору"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.primaryWhite,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Column(
              children: [
                const Text(
                  "Тут ти знайдеш всі ресурси для офрмлення візуальної частини табору.\nУ мініатюрах відображається тільки приклад дизайну, а самі робочі файли (для друку, та використання)  ти можеш скачати нижче кожної мініатюри за посиланням. \nДеякі елементи завантажуються окремими файлами, а деякі архівом (бо містять в собі кілька окремих файлів).",
                  style: TextStyle(fontSize:12, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Text(
                  "П.С. Якщо вам потрібна допомога з роздруком  елементів, або хочете замовити всі елементи вже у готовому варіанті, можете звернутись за посиланням нижче:\n",
                  style: TextStyle(
                    fontSize:12,
                    color: Colors.purple[800],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(onTap: () {
                    _launchURL("https://t.me/merelyroks");
                  }, child: Text("Telegram: merelyroks", style: TextStyle(decoration: TextDecoration.underline),)),
                ),
                const SizedBox(height: 40),
                const Text("ЛОГО", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: SvgPicture.asset(
                    "assets/logo.svg",
                    height: 80,
                    semanticsLabel: 'Перемога'
                ),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1GfzkC0R7xcJSpLFl4E03zpqrukvTCyw3?usp=share_link");
                }),
                const SizedBox(height: 40),
                const Text("БЕЙДЖИКИ (РОЗМІР А7)", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(height: 270,child: Image.asset("images/badge.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1CHgOSo38ZXAPmmuZqdn1xjI-9xauTox-?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("ЗАСТАВКА НА ПРОЕКТОР", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/proector.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1ZHs015HduMcAmRpYet70-MCwspyMN_In?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("СЕРТИФІКАТ (РОЗМІР А5)", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/certificate.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1K0x6vACqMu73985YcjXZIHfsnrQ5mKhv?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("ФУТБОЛКИ (4 ВАРІАНТИ)", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/tshirt.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1PW-EQL6Kr69zG3o_2-dbDN5QWh6ADjfg?usp=sharing");
                }),
                const SizedBox(height: 40),

                const Text("ЛИСТІВКИ (РОЗМІР А6)", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/letters.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1Ez8BXZYkPGlzgumNraMrF4IwYKemM_Rn?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("ПРАПОРИ (РОЗМІР А4)", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/flags.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/19xgIA0cu_WGJ0gRvnosq87HLs4F-ZCd6?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("ДЕТАЛІ МАШИНИ", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(height: 200, child: Image.asset("images/door_car.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1guhJ86KstHobm8FU4FKTjdXDcfaECf4K?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("ЩОДЕННИК ПЕРЕМОЖЦЯ", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(height: 345, child: Image.asset("images/winers_diary.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1WmblVBdnd_3MrNaw9wczB-V4tVarMW41?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("РОЗМАЛЬОВКА 1 (РОЗМІР 1М Х 2М)", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/draw_1.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1VgnmyNZ7-SWS6cc7p7I2gcvsgeHYgT4M?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("РОЗМАЛЬОВКА 1 (ПО КЛІТИНКАХ) (РОЗМІР 1М Х 4М)", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/draw_2.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1y9a0gXnd4-BEXASQI0FRylvyFSXeZscB?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("ФОТОЗОНА", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/fotozona.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1L0UHWclb1anLT5eNKS18MKfcUPMw6h0O?usp=share_link");
                }),
                const SizedBox(height: 40),

                const Text("БАНЕР", textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20),
                DesignContainer(child: Image.asset("images/baner.png"),),
                const SizedBox(height: 20),
                DownloadButton(onPressed: () {
                  _launchURL("https://drive.google.com/drive/folders/1d9yLNlKm_V8kytUVCVdg8UppMyizZl5a?usp=share_link");
                }),
                const SizedBox(height: 40),
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
    } else { // todo Tony
      throw 'Could not launch $url';
    }
  }

}
