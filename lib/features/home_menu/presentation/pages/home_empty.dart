import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/data/shared_prefs.dart';
import 'package:camps_program/features/home_menu/presentation/pages/about_us.dart';
import 'package:camps_program/features/home_menu/presentation/pages/choose_program.dart';
import 'package:camps_program/features/home_menu/presentation/pages/main_page_cubit.dart';
import 'package:camps_program/features/home_menu/presentation/pages/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'additional_res2.dart';
import 'home_content.dart';
import 'home_content_2.dart';
import 'home_content_3.dart';

class MyHomeEmptyPage extends StatefulWidget {
  const MyHomeEmptyPage({Key? key}) : super(key: key);

  @override
  State<MyHomeEmptyPage> createState() => _MyHomeEmptyPageState();
}

class _MyHomeEmptyPageState extends State<MyHomeEmptyPage> {
  int state = 1;
  AppState appState = AppState.chooseProgram;

  updateCampNameFromPrefs(SharedPreferences prefs) async {
    CampName name = SharedPrefs().getChosenCamp(prefs);
    switch (name) {
      case CampName.fiveDivideFour:
        appState = AppState.fiveDivideFourMenu;
        break;
      case CampName.gameVsYou:
        appState = AppState.gameVsYou;
        break;
      case CampName.unknown:
        appState = AppState.chooseProgram;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (
        BuildContext context,
        AsyncSnapshot<SharedPreferences> snapshot,
      ) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Container();
        }
        updateCampNameFromPrefs(snapshot.data!);
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => MainPageCubit(MainPageState(appState)),
            )
          ],
          child: BlocBuilder<MainPageCubit, MainPageState>(
            builder: (BuildContext context, state) {
              return Scaffold(
                backgroundColor: AppColors.primaryWhite,
                drawer: NavigationDrawer(
                  children: [
                    const SizedBox(height: 60),
                    Row(
                      children: [
                        const SizedBox(width: 45),
                        Image.asset("images/daily_camps.png", height: 40),
                        const SizedBox(width: 16),
                        const Text(
                          "DAILY\nCAMPS",
                          style: TextStyle(
                              color: Color(0xEE1B16FF),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 1.0),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    GestureDetector(
                      onTap: () {
                        context.read<MainPageCubit>().openChooseProgramPage();
                        Navigator.of(context).pop();
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                        child: Text(
                          "Обрати програму",
                          style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45),
                        child: Divider(color: Color(0x190d08ff))),
                    GestureDetector(
                      onTap: () {
                        open(context, const AboutUsPage());
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                        child: Text(
                          "Про нас",
                          style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45),
                        child: Divider(color: Color(0x190d08ff))),
                    GestureDetector(
                      onTap: () {
                        open(context, const AdditionalRes2());
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                        child: Text(
                          "Додаткові джерела",
                          style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                        ),
                      ),
                    ),
                    // const Padding(
                    //     padding: EdgeInsets.symmetric(horizontal: 45),
                    //     child: Divider(color: Color(0x190d08ff))),
                    // const Padding(
                    //   padding:
                    //   EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                    //   child: Text(
                    //     "Налаштування",
                    //     style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                    //   ),
                    // ),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45),
                        child: Divider(color: Color(0x190d08ff))),
                  ],
                ),
                appBar: AppBar(
                  elevation: 0.0,
                  centerTitle: true,
                  title: getLogo(state),
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      gradient: getLinearGradien(state),
                    ),
                  ),
                ),
                body: getBody(state),
              );
            },
          ),
        );
      },
    );
  }

  Widget getLogo(MainPageState state) {
    if (state.appState == AppState.fiveDivideFourMenu) {
      return SvgPicture.asset(
        "assets/logo.svg",
        height: 45,
        semanticsLabel: 'Перемога',
      );
    } else if (state.appState == AppState.gameVsYou) {
      return const Text(
        "Гра vs Ти",
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (state.appState == AppState.skyLand) {
      return const Text("");
    } else {
      return Container();
    }
  }

  Widget? getBody(MainPageState mainPageState) {
    switch (mainPageState.appState) {
      case AppState.chooseProgram:
        return ChooseProgram(mainPageState);
      case AppState.fiveDivideFourMenu:
        return const MyHomePageContent();
      case AppState.gameVsYou:
        return const MyHomePageContent2();
      case AppState.skyLand:
        return const MyHomePageContent3();
    }
  }

  LinearGradient getLinearGradien(MainPageState mainPageState) {
    switch (mainPageState.appState) {
      case AppState.chooseProgram:
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xfffcfcfe), Color(0xfff7f6ff)],
        );
      case AppState.fiveDivideFourMenu:
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xfffcfcfe), Color(0xfff7f6ff)],
        );
      case AppState.gameVsYou:
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xfffcfcfe), Color(0xfff7f6ff)],
        );
      case AppState.skyLand:
        return const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[Color(0xff8fc0ff), Color(0xffbae3ff)],
        );
    }
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
