import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/data/history_channel_repo.dart';
import 'package:camps_program/features/home_menu/data/lessons_repo.dart';
import 'package:camps_program/features/home_menu/data/scenes_repo.dart';
import 'package:camps_program/features/home_menu/presentation/pages/simple_page.dart';
import 'package:camps_program/features/home_menu/presentation/pages/pdf_screen.dart';
import 'package:camps_program/features/home_menu/presentation/pages/scene_page.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/expandable_menu.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/sub_menu_card.dart';
import 'package:flutter/material.dart';

import '../../data/general_repo.dart';

class ProgramMenuPage extends StatefulWidget {
  const ProgramMenuPage({Key? key}) : super(key: key);

  @override
  State<ProgramMenuPage> createState() => _ProgramMenuPageState();
}

class _ProgramMenuPageState extends State<ProgramMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Програма табору"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 1",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
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
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Станції 10-14",
                              url:
                                  "https://drive.google.com/file/d/1qPl_6Vn8yDo5wwRwZEhhKf4Hw1nUxf9d/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 6-9",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Станції 6-9",
                              url:
                                  "https://drive.google.com/file/d/1U7VLcNOz7HPLCOtjqZhctFF4HSGZASS9/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Мальовничими куточками України",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Мальовничими куточками України",
                              url:
                                  "https://drive.google.com/file/d/1TLFp2qyTEGq8kpQgL-0uY4HybrIxYBLH/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(
                          context,
                          SimplePage(
                            title: "Піт-стоп",
                            text: LessonsRepo().lesson1Text,
                            urlOnDrive:
                                "https://drive.google.com/file/d/1YIoj5hwaAGEQiqZ8aekfmDEXh76X8tJh/view?usp=sharing",
                          ));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 2",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(
                          context,
                          SceneTextPage(
                            text1: ScenesData().secondMorningScene,
                            text2: ScenesData().secondEveningScene,
                            urlOnDrive:
                                "https://drive.google.com/file/d/17zlHZxCRwQ39kPon4CfiYkgz-5qREOiD/view?usp=share_link",
                            historyChannelText:
                                HistoryChannelRepo().historyChannel2,
                            historyChannelUrl:
                                "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                            videoFormulaUrl:
                                "https://www.youtube.com/watch?v=nc8WRGdH6Iw&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&index=2&ab_channel=KoloDruzivLviv",
                          ));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 10-14",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Станції 10-14",
                              url:
                                  "https://drive.google.com/file/d/1FY2n8IbFWjJsgOuOPWG7d1iigIxxtrtO/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 6-9",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Станції 6-9",
                              url:
                                  "https://drive.google.com/file/d/1rCV5g3NlnqE_Te1gUah2qltiFaQME0fo/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Мальовничими куточками України",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Мальовничими куточками України",
                              url:
                                  "https://drive.google.com/file/d/1HHZaltswvHHcTsFO7rRbzao5dyp2vUT7/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(
                          context,
                          SimplePage(
                            title: "Піт-стоп",
                            text: LessonsRepo().lesson2Text,
                            urlOnDrive:
                                "https://drive.google.com/file/d/1ZLtTS9lbUZrz8b5inbC9nXre-TPOyKpw/view?usp=sharing",
                          ));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 3",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(
                          context,
                          SceneTextPage(
                            text1: ScenesData().thirdMorningScene,
                            text2: ScenesData().thirdEveningScene,
                            urlOnDrive:
                                "https://drive.google.com/file/d/1ioKB1IyXUjKsZRFQ8J4YY0Rtde23Xo0w/view?usp=share_link",
                            historyChannelText:
                                HistoryChannelRepo().historyChannel3,
                            historyChannelUrl:
                                "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                            videoFormulaUrl:
                                "https://www.youtube.com/watch?v=pEbT85ZORqE&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&index=3&ab_channel=KoloDruzivLviv",
                          ));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 6-9",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Станції 6-9",
                              url:
                                  "https://drive.google.com/file/d/1QZuVPXiiAkis3si15E33_RIssk_qMbml/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Мальовничими куточками України",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Мальовничими куточками України",
                              url:
                                  "https://drive.google.com/file/d/1kn3ZTXkkwBho-UbEY0MGovJJ-bu_IS3_/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Бізнес гра \"Життя 2.0\"",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Бізнес гра \"Життя 2.0\"",
                              url:
                                  "https://drive.google.com/file/d/1m2ZQ5WeofIDqxabCTFAAnsUV3-osCUUY/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(
                          context,
                          SimplePage(
                            title: "Піт-стоп",
                            text: LessonsRepo().lesson3Text,
                            urlOnDrive:
                                "https://drive.google.com/file/d/14j0VvxoaA_AQ8xGiO0LO7SEFDxMbj8YS/view?usp=sharing",
                          ));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 4",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(
                          context,
                          SceneTextPage(
                            text1: ScenesData().fourthMorningScene,
                            text2: ScenesData().fourthEveningScene,
                            urlOnDrive:
                                "https://drive.google.com/file/d/1diZ7Sgch1X8NvSIfy8tYFxv5vRqXKv8-/view?usp=share_link",
                            historyChannelText:
                                HistoryChannelRepo().historyChannel4,
                            historyChannelUrl:
                                "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                            videoFormulaUrl:
                                "https://www.youtube.com/watch?v=SsvQO5YvHgE&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&index=4&ab_channel=KoloDruzivLviv",
                          ));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 6-9",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Станції 6-9",
                              url:
                                  "https://drive.google.com/file/d/1ycEXvLX1eY_283loAt_YwZFkNJQ4XSFB/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Мальовничими куточками України",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Мальовничими куточками України",
                              url:
                                  "https://drive.google.com/file/d/1caZFFJv7lFmzV2WWj101pk6xZHjhMEsT/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Квест \"Шлях\"",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Квест \"Шлях\"",
                              url:
                                  "https://drive.google.com/file/d/1Y7ZDcNdm46hMRhvl87yJwz8udSyVKjWu/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(
                          context,
                          SimplePage(
                            title: "Піт-стоп",
                            text: LessonsRepo().lesson4Text,
                            urlOnDrive:
                                "https://drive.google.com/file/d/1dulQ3G8CrhAKlnR8Z4zjweBY_Lqio4TN/view?usp=sharing",
                          ));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Турнір",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Турнір",
                              url:
                                  "https://drive.google.com/file/d/1sMm-7MR0IbZb91DBqOyzfXaZeABHsO5g/view?usp=sharing"));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ExpandableMenu(
                title: "День 5",
                children: [
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Сцена",
                    onTap: () {
                      open(
                          context,
                          SceneTextPage(
                            text1: ScenesData().fifthMorningScene,
                            text2: ScenesData().fifthEveningScene,
                            urlOnDrive:
                                "https://drive.google.com/file/d/1d754tigY0M2PIAd23T_zvo_qQE88UgJq/view?usp=share_link",
                            historyChannelText:
                                HistoryChannelRepo().historyChannel5,
                            historyChannelUrl:
                                "https://drive.google.com/file/d/14cfEUrsewAJuq2fwaB473kpDy5BG-xGI/view?usp=sharing",
                            videoFormulaUrl:
                                "https://www.youtube.com/watch?v=cSet8HcZOMw&list=PLXJIzqdCb1er8eKzutTVG5MdZpmlUh1uy&index=5&ab_channel=KoloDruzivLviv",
                          ));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Станції 6-9",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Станції 6-9",
                              url:
                                  "https://drive.google.com/file/d/1g30fd3X6OJFNSpeBNJ6HQGVzYNTH8O4b/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Загальнотабірна гра",
                    onTap: () {
                      open(
                          context,
                          const PdfScreen(
                              title: "Загальнотабірна гра",
                              url:
                                  "https://drive.google.com/file/d/1T9yu5fGowVsDLrUiEWrrYyWiiy--otRe/view?usp=sharing"));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Піт-стоп/урок",
                    onTap: () {
                      open(
                          context,
                          SimplePage(
                            title: "Піт-стоп",
                            text: LessonsRepo().lesson5Text,
                            urlOnDrive:
                                "https://drive.google.com/file/d/1bmaLZWiP3ojDQI31pmbFAsXN96RqDcC6/view?usp=sharing",
                          ));
                    },
                  ),
                  const SizedBox(height: 5),
                  SubMenuCard(
                    title: "Виступ для батьків",
                    onTap: () {
                      open(
                          context,
                          SimplePage(
                            title: "Виступ для батьків",
                            text: GeneralRepo().textForParent,
                            urlOnDrive:
                                "https://drive.google.com/file/d/1C8HW9xbXcINYkYhkZoBVBrOh_LM_DPnX/view?usp=sharing",
                          ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
