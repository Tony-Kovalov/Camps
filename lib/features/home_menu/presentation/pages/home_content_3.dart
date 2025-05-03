import 'package:camps_program/features/home_menu/presentation/pages/about_camp3.dart';
import 'package:camps_program/features/home_menu/presentation/pages/design_page3.dart';
import 'package:camps_program/features/home_menu/presentation/pages/program_menu3.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/camp_card4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/program3_data2.dart';
import 'info_page_1bloc.dart';

class MyHomePageContent3 extends StatelessWidget {
  const MyHomePageContent3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xff8fc0ff), Color(0xffbae3ff)],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            CampCard4(
              title: "Про програму СкайLand",
              imgAsset: "images/paper_clip.png",
              onTap: () {
                open(context, AboutCamp3());
              },
            ),
            const SizedBox(height: 24),
            CampCard4(
              title: "Програма",
              imgAsset: "images/button_nail.png",
              onTap: () {
                open(context, const ProgramMenu3Page());
              },
            ),
            const SizedBox(height: 24),
            CampCard4(
              title: "Зустріч для команд перед табором",
              imgAsset: "images/bell.png",
              onTap: () {
                open(
                  context,
                  InfoPage1Bloc(
                    title: "Зустріч для команд перед табором",
                    texts: Program3Data2.meetingForTeamBeforeCamp,
                    images: null,
                    titleStyle: PageTitleStyle.underAppBar,
                    bgLinearGradient: getBgLinearGradient(),
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            CampCard4(
              title: "Дизайн та поліграфія",
              imgAsset: "images/pencil.png",
              onTap: () {
                open(context, const DesignPage3());
              },
            ),
            const SizedBox(height: 24),
            CampCard4(
              title: "Година до табору",
              imgAsset: "images/gift.png",
              onTap: () {
                open(
                  context,
                  InfoPage1Bloc(
                    title: "Година до табору",
                    texts: Program3Data2.hourBeforeCampTxts,
                    images: Program3Data2.hourBeforeCampImgs,
                    titleStyle: PageTitleStyle.underAppBar,
                    bgLinearGradient: getBgLinearGradient(),
                    onDownloadTap: () {
                      _launchURL("https://drive.google.com/drive/folders/1YTsfy7rzk7_IBTGcSc95O5BRiBT11GrC?usp=drive_link");
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            CampCard4(
              title: "Декор",
              imgAsset: "images/bow.png",
              onTap: () {
                open(
                  context,
                  InfoPage1Bloc(
                    title: "Декор",
                    texts: Program3Data2.decorationTxts,
                    images: Program3Data2.decorationImgs,
                    titleStyle: PageTitleStyle.underAppBar,
                    bgLinearGradient: getBgLinearGradient(),
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            CampCard4(
              title: "Апгрейт для малечі",
              imgAsset: "images/horse.png",
              onTap: () {
                open(
                  context,
                  InfoPage1Bloc(
                    title: "Апгрейт для малечі",
                    texts: [],
                    images: Program3Data2.upgradeForKidsImgs,
                    titleStyle: PageTitleStyle.underAppBar,
                    bgLinearGradient: getBgLinearGradient(),
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  LinearGradient getBgLinearGradient() {
    return const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xff8fc0ff), Color(0xffbae3ff)],
    );
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
