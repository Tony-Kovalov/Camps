import 'package:camps_program/features/home_menu/presentation/pages/design_page2.dart';
import 'package:camps_program/features/home_menu/presentation/pages/program_menu2.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/camp_card.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/camp_card2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/camp_card3.dart';

class MyHomePageContent2 extends StatelessWidget {
  const MyHomePageContent2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
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
            const Text(
              "Гра vs Ти",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            CampCard(
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
                        title: "Фішки днів",
                        imgAsset: "images/rocket.png",
                      ),
                      const SizedBox(height: 16),
                      CampCard2(
                        title: "Організаційні моменти роботи у таборі",
                        imgAsset: "images/management.png",
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
                        title: "Робота із соцмережами",
                        imgAsset: "images/social.png",
                      ),
                      const SizedBox(height: 16),
                      CampCard3(
                        title: "Додаткові джерела",
                        imgAsset: "images/additional_sources.png",
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
