import 'package:camps_program/features/home_menu/data/program3_data.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/sub_menu_card3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/expandable_menu3.dart';
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
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
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
                          InfoPage1Bloc(
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
                          InfoPage1Bloc(
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
                          InfoPage1Bloc(
                            title: "OK (openkey) день 1",
                            texts: Program3Data.openKeyTxtsDay1,
                            images: Program3Data.openKeyImagesDay1,
                            titleStyle: PageTitleStyle.underAppBar,
                            bgLinearGradient: getBgLinearGradient(),
                            onDownloadTap: () {
                              // TODO
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
                          InfoPage1Bloc(
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
                          InfoPage1Bloc(
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
                          InfoPage1Bloc(
                            title: "OK (openkey) день 2",
                            texts: Program3Data.openKeyTxtsDay2,
                            images: Program3Data.openKeyImagesDay2,
                            titleStyle: PageTitleStyle.underAppBar,
                            bgLinearGradient: getBgLinearGradient(),
                            onDownloadTap: () {
                              // TODO
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
                          InfoPage1Bloc(
                            title: "Загальотабірна гра “Токсичне болото”",
                            texts: Program3Data.generalGameTxtsDay2,
                            images: null,
                            titleStyle: PageTitleStyle.underAppBar,
                            bgLinearGradient: getBgLinearGradient(),
                            onDownloadTap: () {
                              // TODO
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
                          InfoPage1Bloc(
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
              ],
            ),
          ),
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

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
