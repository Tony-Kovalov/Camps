import 'package:camps_program/features/home_menu/data/history_channel_repo.dart';
import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/pdf_screen.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_page.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_page2.dart';
import 'package:flutter/material.dart';

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
                      title: "Сцена",
                      onTap: () {
                        open(
                            context,
                            SceneTextPage2(
                              text1: ScenesData2().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 10-14",
                                url:
                                    "https://drive.google.com/file/d/1qPl_6Vn8yDo5wwRwZEhhKf4Hw1nUxf9d/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 12+",
                                url:
                                    "https://drive.google.com/file/d/1U7VLcNOz7HPLCOtjqZhctFF4HSGZASS9/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Мальовничими куточками України",
                                url:
                                    "https://drive.google.com/file/d/1TLFp2qyTEGq8kpQgL-0uY4HybrIxYBLH/view?usp=sharing"));
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
                      title: "Сцена",
                      onTap: () {
                        open(
                            context,
                            SceneTextPage(
                              text1: ScenesData().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 10-14",
                                url:
                                    "https://drive.google.com/file/d/1qPl_6Vn8yDo5wwRwZEhhKf4Hw1nUxf9d/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 12+",
                                url:
                                    "https://drive.google.com/file/d/1U7VLcNOz7HPLCOtjqZhctFF4HSGZASS9/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Мальовничими куточками України",
                                url:
                                    "https://drive.google.com/file/d/1TLFp2qyTEGq8kpQgL-0uY4HybrIxYBLH/view?usp=sharing"));
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
                      title: "Сцена",
                      onTap: () {
                        open(
                            context,
                            SceneTextPage(
                              text1: ScenesData().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 10-14",
                                url:
                                    "https://drive.google.com/file/d/1qPl_6Vn8yDo5wwRwZEhhKf4Hw1nUxf9d/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 12+",
                                url:
                                    "https://drive.google.com/file/d/1U7VLcNOz7HPLCOtjqZhctFF4HSGZASS9/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Мальовничими куточками України",
                                url:
                                    "https://drive.google.com/file/d/1TLFp2qyTEGq8kpQgL-0uY4HybrIxYBLH/view?usp=sharing"));
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
                      title: "Сцена",
                      onTap: () {
                        open(
                            context,
                            SceneTextPage(
                              text1: ScenesData().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 10-14",
                                url:
                                    "https://drive.google.com/file/d/1qPl_6Vn8yDo5wwRwZEhhKf4Hw1nUxf9d/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 12+",
                                url:
                                    "https://drive.google.com/file/d/1U7VLcNOz7HPLCOtjqZhctFF4HSGZASS9/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Мальовничими куточками України",
                                url:
                                    "https://drive.google.com/file/d/1TLFp2qyTEGq8kpQgL-0uY4HybrIxYBLH/view?usp=sharing"));
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
                      title: "Сцена",
                      onTap: () {
                        open(
                            context,
                            SceneTextPage(
                              text1: ScenesData().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 7-11р",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 10-14",
                                url:
                                    "https://drive.google.com/file/d/1qPl_6Vn8yDo5wwRwZEhhKf4Hw1nUxf9d/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Станції 12+",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Станції 12+",
                                url:
                                    "https://drive.google.com/file/d/1U7VLcNOz7HPLCOtjqZhctFF4HSGZASS9/view?usp=sharing"));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Чат (біблійна зустріч)",
                      onTap: () {
                        open(
                            context,
                            PdfScreen(
                                title: "Мальовничими куточками України",
                                url:
                                    "https://drive.google.com/file/d/1TLFp2qyTEGq8kpQgL-0uY4HybrIxYBLH/view?usp=sharing"));
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
                            SceneTextPage(
                              text1: ScenesData().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Ігри з парашутом",
                      onTap: () {
                        open(
                            context,
                            SceneTextPage(
                              text1: ScenesData().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Майстер-класи",
                      onTap: () {
                        open(
                            context,
                            SceneTextPage(
                              text1: ScenesData().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
                      },
                    ),
                    const SizedBox(height: 5),
                    SubMenuCard2(
                      title: "Гігантська розмальовка",
                      onTap: () {
                        open(
                            context,
                            SceneTextPage(
                              text1: ScenesData().firstMorningScene,
                              text2: ScenesData().firstEveningScene,
                              urlOnDrive:
                                  "https://drive.google.com/file/d/1qZXM00OEwT7qBTWKWQz5bGtRxMBUaZ01/view?usp=share_link",
                              historyChannelText:
                                  HistoryChannelRepo().historyChannel1,
                              historyChannelUrl:
                                  "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                              videoFormulaUrl:
                                  "https://www.youtube.com/watch?v=pbxuRwBzseg&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&ab_channel=KoloDruzivLviv",
                            ));
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
                  children: [],
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
