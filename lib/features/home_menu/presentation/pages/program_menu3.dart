import 'package:camps_program/features/home_menu/data/program3_data.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/sub_menu_card3.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/expandable_menu3.dart';
import 'info_page_3bloc.dart';
import 'scene_page3.dart';
import 'info_page_1bloc.dart';

class ProgramMenu3Page extends StatefulWidget {
  const ProgramMenu3Page({super.key});

  @override
  State<ProgramMenu3Page> createState() => _ProgramMenu3PageState();
}

class _ProgramMenu3PageState extends State<ProgramMenu3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff8fc0ff), Color(0xffbae3ff)],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff8fc0ff), Color(0xffbae3ff)],
          ),
        ),
        child:
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "images/sky_land3.png",
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "images/sky_land4.png",
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "images/sky_land5.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "📌 Програма",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ExpandableMenu3(
                      title: "День 1",
                      children: [
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Ранок",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена ранок",
                                numOfDay: 1,
                                partOfDay: PartOfDay.morning,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Вечір",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена вечір",
                                numOfDay: 1,
                                partOfDay: PartOfDay.evening,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Реєстрація",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Реєстрація",
                                texts: Program3Data.registrationTxts,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Фестиваль",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Фестиваль",
                                texts: Program3Data.festivalTxts,
                                images: Program3Data.festivalImages,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "ОК (openkey)",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "OK (openkey) день 1",
                                texts: Program3Data.openKeyTxtsDay1,
                                images: Program3Data.openKeyImagesDay1,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                                onDownloadTap: () {
                                  _launchURL("https://drive.google.com/drive/folders/1SwzT3WQ4y6IPbw-09ihJJq6CE_fhYkFR?usp=drive_link");
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Година для підлітків",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Бонусна година для підлітків",
                                texts: Program3Data.bonusTeensTimeTxtsDay1,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ExpandableMenu3(
                      title: "День 2",
                      children: [
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Ранок",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена ранок",
                                numOfDay: 2,
                                partOfDay: PartOfDay.morning,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Вечір",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена вечір",
                                numOfDay: 2,
                                partOfDay: PartOfDay.evening,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Вхід в табір",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Вхід в табір",
                                texts: Program3Data.entranceToTheCamp,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "ОК (openkey)",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "OK (openkey) день 2",
                                texts: Program3Data.openKeyTxtsDay2,
                                images: Program3Data.openKeyImagesDay2,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                                onDownloadTap: () {
                                  _launchURL("https://drive.google.com/drive/folders/1bkEiWtr7x13Cbc1IyoOW744djCYVJPaF?usp=drive_link");
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Загальотабірна гра",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Загальотабірна гра “Токсичне болото”",
                                texts: Program3Data.generalGameTxtsDay2,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                                onDownloadTap: () {
                                  _launchURL("https://drive.google.com/file/d/1zoQuQkL_AzbJLM5J5MwNm1hbyzZMErso/view?usp=drive_link");
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Година для підлітків",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Бонусна година для підлітків день 2",
                                texts: Program3Data.bonusTeensTimeTxtsDay2,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ExpandableMenu3(
                      title: "День 3",
                      children: [
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Ранок",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена ранок",
                                numOfDay: 3,
                                partOfDay: PartOfDay.morning,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Вечір",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена вечір",
                                numOfDay: 3,
                                partOfDay: PartOfDay.evening,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Загальнотабірна гра",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Загальнотабірка “Прірва”",
                                texts: Program3Data.generalGameTxtsDay3,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Завдання дня",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Завдання дня",
                                texts: Program3Data.day3DailyTaskTxt,
                                images: Program3Data.day3DailyTaskImg,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "ОК (openkey)",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "OK (openkey) день 3",
                                texts: Program3Data.openKeyTxtsDay3,
                                images: Program3Data.openKeyImagesDay3,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                                onDownloadTap: () {
                                  _launchURL("https://drive.google.com/drive/folders/1j5VIbN_x9mP2ng14nGyPBVPF2pT0YpQK?usp=drive_link");
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Година для підлітків",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Бонусна година для підлітків день 3",
                                texts: Program3Data.bonusTeensTimeTxtsDay3,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Вихід з табору",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Вихід з табору",
                                texts: Program3Data.leavingTheCampTxtsDay3,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ExpandableMenu3(
                      title: "День 4",
                      children: [
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Ранок",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена ранок",
                                numOfDay: 4,
                                partOfDay: PartOfDay.morning,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Вечір",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена вечір",
                                numOfDay: 4,
                                partOfDay: PartOfDay.evening,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Квест",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Квест",
                                texts: Program3Data.generalGameTxtsDay4,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                                onDownloadTap: () {
                                  _launchURL("https://drive.google.com/file/d/1C8o3G3-lPVflrWzJfAwaizcswPoXoaot/view?usp=drive_link");
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "ОК (openkey)",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "OK (openkey) день 4",
                                texts: Program3Data.openKeyTxtsDay4,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                                onDownloadTap: () {
                                  _launchURL("https://drive.google.com/drive/folders/1ws1gvuJVIJxzhazHeOpRtxWvSf61sKFt?usp=drive_link");
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Година для підлітків",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Бонусна година для підлітків день 4",
                                texts: Program3Data.bonusTeensTimeTxtsDay4,
                                images: null,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ExpandableMenu3(
                      title: "День 5",
                      children: [
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Ранок",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена ранок",
                                numOfDay: 5,
                                partOfDay: PartOfDay.morning,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Сцена Вечір",
                          onTap: () {
                            open(
                              context,
                              ScenePage(
                                title: "Сцена вечір",
                                numOfDay: 5,
                                partOfDay: PartOfDay.evening,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Тімбілдінг",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Тімбілдінг",
                                texts: Program3Data.teambuildingTxtsDay5,
                                images: Program3Data.teambuildingImgDay5,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "ОК (openkey)",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "OK (openkey) день 5",
                                texts: Program3Data.openKeyTxtsDay5,
                                images: Program3Data.openKeyImgDay5,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                                onDownloadTap: () {
                                  _launchURL("https://drive.google.com/drive/folders/1Ky3TboHALygP253y5YbzKJqf5Qy8328j?usp=drive_link");
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        SubMenuCard3(
                          title: "Година для підлітків",
                          onTap: () {
                            open(
                              context,
                              InfoPage3Bloc(
                                title: "Бонусна година для підлітків день 5",
                                texts: Program3Data.bonusTeensTimeTxtsDay5,
                                images: Program3Data.bonusTeensTimeImgsDay5,
                                titleStyle: PageTitleStyle.underAppBar,
                                bgLinearGradient: getBgLinearGradient(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
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
