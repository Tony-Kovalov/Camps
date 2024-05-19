import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/choose_program.dart';
import 'package:camps_program/features/home_menu/presentation/pages/main_page_cubit.dart';
import 'package:camps_program/features/home_menu/presentation/pages/main_page_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_content.dart';
import 'home_content_2.dart';

class MyHomeEmptyPage extends StatefulWidget {
  const MyHomeEmptyPage({Key? key}) : super(key: key);

  @override
  State<MyHomeEmptyPage> createState() => _MyHomeEmptyPageState();
}

class _MyHomeEmptyPageState extends State<MyHomeEmptyPage> {
  int state = 1;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              MainPageCubit(const MainPageState(AppState.chooseProgram)),
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
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                    child: Text(
                      "Обрати програму",
                      style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Divider(color: Color(0x190d08ff))),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                  child: Text(
                    "Налаштування",
                    style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Divider(color: Color(0x190d08ff))),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                  child: Text(
                    "Про нас",
                    style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Divider(color: Color(0x190d08ff))),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                  child: Text(
                    "Контакти",
                    style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Divider(color: Color(0x190d08ff))),
              ],
            ),
            appBar: AppBar(
              elevation: 0.0,
              centerTitle: true,
              title: SvgPicture.asset("assets/logo.svg",
                  height: 45, semanticsLabel: 'Перемога'),
            ),
            body: getBody(state),
          );
        },
      ),
    );
  }

  Widget? getBody(MainPageState mainPageState) {
    switch (mainPageState.appState) {
      case AppState.chooseProgram:
        return ChooseProgram(mainPageState);
      case AppState.fiveDivideFourMenu:
        return const MyHomePageContent();
      case AppState.gameVsYou:
        return const MyHomePageContent2();
    }
  }
}
