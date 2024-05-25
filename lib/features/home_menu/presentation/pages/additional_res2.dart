import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/second_menu_card2.dart';

class AdditionalRes2 extends StatelessWidget {
  const AdditionalRes2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Додаткові джерела"),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xfffcfcfe), Color(0xfff7f6ff)],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xfff7f6ff), Color(0xff5350ff)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              SecondMenuCard2(
                title: "Телеграм чат для служителів клубів",
                isOpenEffectEnabled: false,
                onTap: () {
                  _launchURL("https://t.me/christianclubs");
                },
                isVisibleIcon: false,
              ),
              const SizedBox(height: 16),
              SecondMenuCard2(
                title: "Ютуб канал з ідеями для клубів",
                isOpenEffectEnabled: false,
                onTap: () {
                  _launchURL("https://www.youtube.com/@KoloDruzivLviv");
                },
                isVisibleIcon: false,
              ),
              const SizedBox(height: 16),
              SecondMenuCard2(
                title: "Телеграм канал з табірною музикою",
                isOpenEffectEnabled: false,
                onTap: () {
                  _launchURL("https://t.me/joinchat/AAAAAFXklGmUMlBJSpGuPw");
                },
                isVisibleIcon: false,
              ),
              const SizedBox(height: 16),
              SecondMenuCard2(
                title: "Телеграм група для зворотнього зв'язку",
                isOpenEffectEnabled: false,
                onTap: () {
                  _launchURL("https://t.me/+L9l995gD74U5ODZi");
                },
                isVisibleIcon: false,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
