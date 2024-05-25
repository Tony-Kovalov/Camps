import 'package:camps_program/features/home_menu/data/general_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/additional_res2.dart';
import 'package:camps_program/features/home_menu/presentation/pages/anout_camp_2.dart';
import 'package:camps_program/features/home_menu/presentation/pages/camp_song.dart';
import 'package:camps_program/features/home_menu/presentation/pages/design_page2.dart';
import 'package:camps_program/features/home_menu/presentation/pages/program_menu2.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/camp_card.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/camp_card2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/camp_card3.dart';
import 'info_page_1bloc.dart';

class MyHomePageContent2 extends StatelessWidget {
  const MyHomePageContent2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xfffefeff), Color(0xff2520FF)],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            CampCard(
                onTap: () {
                  open(context, const AboutCamp2Page());
                },
                title: "Дивитись про програму \"Гра vs Ти\"",
                imgAsset: "images/play_rounded_new_ligh.png"),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CampCard2(
                        onTap: () {
                          open(context, const ProgramMenuPage2());
                        },
                        title: "Програма табору",
                        imgAsset: "images/notepad.png",
                      ),
                      const SizedBox(height: 16),
                      CampCard3(
                        onTap: () {
                          open(
                            context,
                            InfoPage1Bloc(
                              title: "Батьківський контроль",
                              texts: GeneralRepo.parentControlTexts,
                              images: GeneralRepo.parentControlImages,
                            ),
                          );
                        },
                        title: "Батьківський контроль",
                        imgAsset: "images/rocket.png",
                      ),
                      const SizedBox(height: 16),
                      CampCard2(
                        onTap: () {
                          open(
                            context,
                            InfoPage1Bloc(
                              title: "Система заохочення",
                              texts: GeneralRepo.rewardSystemTexts,
                              images: GeneralRepo.rewardSystemImages,
                            ),
                          );
                        },
                        title: "Система заохочення - аватар",
                        imgAsset: "images/avatar.png",
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CampCard3(
                        onTap: () {
                          open(context, const DesignPage2());
                        },
                        title: "Дизайн табору",
                        imgAsset: "images/design.png",
                      ),
                      const SizedBox(height: 16),
                      CampCard2(
                        onTap: () {
                          open(context, const AdditionalRes2());
                        },
                        title: "Додаткові джерела",
                        imgAsset: "images/additional_sources.png",
                      ),
                      const SizedBox(height: 16),
                      CampCard3(
                        onTap: () {
                          open(context, const CampSong());
                        },
                        title: "Табірна пісня",
                        imgAsset: "images/music.jpg",
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
