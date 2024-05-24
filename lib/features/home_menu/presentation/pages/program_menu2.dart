import 'package:camps_program/features/home_menu/data/additional_stations_2.dart';
import 'package:camps_program/features/home_menu/data/bible_lesson_repo.dart';
import 'package:camps_program/features/home_menu/data/generalGamesRepo.dart';
import 'package:camps_program/features/home_menu/data/general_repo.dart';
import 'package:camps_program/features/home_menu/data/history_channel_repo.dart';
import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/data/stations_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/info_page_1bloc.dart';
import 'package:camps_program/features/home_menu/presentation/pages/pdf_screen.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_page.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_page2.dart';
import 'package:camps_program/features/home_menu/presentation/pages/simple_text_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/scenes_repo2.dart';
import '../widgets/expandable_menu2.dart';
import '../widgets/sub_menu_card2.dart';

class ProgramMenuPage2 extends StatefulWidget {
  const ProgramMenuPage2({Key? key}) : super(key: key);

  @override
  State<ProgramMenuPage2> createState() => _ProgramMenuPageState2();
}

class _ProgramMenuPageState2 extends State<ProgramMenuPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xfffefeff), Color(0xff2520FF)],
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Програма табору",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 23,
                  ),
                ),
                const SizedBox(height: 24),
                ExpandableMenu2(
                  title: "День 1",
                  children: [
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена ранок",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Ранок 1",
                              texts: ScenesData2.firstMorningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена вечір",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Сцена / Вечір 1",
                            texts: ScenesData2.firstEveningScene,
                            images: [],
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 7-11р",
                            texts: StationsRepo.first7_11yTexts,
                            images: StationsRepo.first7_11yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 12+",
                            texts: StationsRepo.first12yTexts,
                            images: StationsRepo.first12yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Чат (біблійна зустріч)",
                            texts: BibleLessonRepo.bible_seson1,
                            images: [],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ExpandableMenu2(
                  title: "День 2",
                  children: [
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена ранок",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Ранок 2",
                              texts: ScenesData2.secondMorningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена вечір",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Вечір 2",
                              texts: ScenesData2.secondEveningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 7-11р",
                            texts: StationsRepo.second7_11yTexts,
                            images: StationsRepo.second7_11yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 12+",
                            texts: StationsRepo.second12yTexts,
                            images: StationsRepo.second12yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Чат (біблійна зустріч)",
                            texts: BibleLessonRepo.bible_seson2,
                            images: [],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ExpandableMenu2(
                  title: "День 3",
                  children: [
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена ранок",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Ранок 3",
                              texts: ScenesData2.thirdMorningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена вечір",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Вечір 3",
                              texts: ScenesData2.thirdEveningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 7-11р",
                            texts: StationsRepo.third7_11yTexts,
                            images: StationsRepo.third7_11yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 12+",
                            texts: StationsRepo.third12yTexts,
                            images: StationsRepo.third12yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Чат (біблійна зустріч)",
                            texts: BibleLessonRepo.bible_seson3_texts,
                            images: BibleLessonRepo.bible_seson3_images,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ExpandableMenu2(
                  title: "День 4",
                  children: [
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена ранок",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Ранок 4`",
                              texts: ScenesData2.fourthMorningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена вечір",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Вечір 4",
                              texts: ScenesData2.fourthEveningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 7-11р",
                            texts: StationsRepo.fourth7_11yTexts,
                            images: StationsRepo.fourth7_11yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 12+",
                            texts: StationsRepo.fourth12yTexts,
                            images: StationsRepo.fourth12yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Чат (біблійна зустріч)",
                            texts: BibleLessonRepo.bible_seson4_texts,
                            images: [],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ExpandableMenu2(
                  title: "День 5",
                  children: [
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена ранок",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Ранок 5",
                              texts: ScenesData2.fifthMorningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Сцена вечір",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                              title: "Сцена / Вечір 5",
                              texts: ScenesData2.fifthEveningScene,
                              images: []),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 7-11р",
                            texts: StationsRepo.fifth7_11yTexts,
                            images: StationsRepo.fifth7_11yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Станції 12+",
                            texts: StationsRepo.fifth12yTexts,
                            images: StationsRepo.fifth12yImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Чат (біблійна зустріч)",
                            texts: BibleLessonRepo.bible_seson5_texts,
                            images: BibleLessonRepo.bible_seson5_images,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ExpandableMenu2(
                  title: "Додаткові станції",
                  children: [
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Творчість",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Творчість",
                            texts: AdditionalStations2Repo.art_texts,
                            images: AdditionalStations2Repo.art_images,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Ігри з парашутом",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Ігри з парашутом",
                            texts: AdditionalStations2Repo.parachuteGamesTexts,
                            images: [],
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Майстер-класи",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Майстер-класи",
                            texts: AdditionalStations2Repo.masterClassesTexts,
                            images: AdditionalStations2Repo.masterClassesImages,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Гігантська розмальовка",
                      onTap: () async {
                        final Uri url = Uri.parse(
                            'https://drive.google.com/file/d/1602IOXbijr2OpbTISTs-oqalSgNvGeyv/view');
                        await launchUrl(url);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ExpandableMenu2(
                  title: "Година з Тінсами",
                  children: [],
                ),
                const SizedBox(height: 10),
                ExpandableMenu2(
                  title: "Табірна пісня",
                  children: [],
                ),
                const SizedBox(height: 10),
                ExpandableMenu2(
                  title: "Загальнотабірки",
                  children: [
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Прочитай мене",
                      onTap: () {
                        open(
                          context,
                          SimpleTextPage(
                            text: GeneralRepo().generalGamesReadMe,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Camp surfers",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Camp surfers",
                            texts: GeneralGamesRepo.textsCampSurfers,
                            images: GeneralGamesRepo.imagesCampSurfers,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Camp Stars",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Camp Stars",
                            texts: GeneralGamesRepo.textsCampStars,
                            images: GeneralGamesRepo.imagesCampStars,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Like us",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Like us",
                            texts: GeneralGamesRepo.textsLikeUs,
                            images: GeneralGamesRepo.imagesLikeUs,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Journey",
                      onTap: () {
                        open(
                          context,
                          InfoPage1Bloc(
                            title: "Journey",
                            texts: GeneralGamesRepo.textsJourney,
                            images: GeneralGamesRepo.imagesJourney,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
