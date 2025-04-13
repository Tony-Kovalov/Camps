import 'package:camps_program/features/home_menu/data/shared_prefs.dart';
import 'package:camps_program/features/home_menu/presentation/pages/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/camp_card.dart';
import 'main_page_cubit.dart';

class ChooseProgram extends StatelessWidget {
  const ChooseProgram(this.mainPageState, {super.key});

  final MainPageState mainPageState;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xfff7f6ff), Color(0xff5350ff)],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 32,
                  color: Color(0xff0C0A1C),
                ),
                children: [
                  TextSpan(text: "Привіт!\n"),
                  TextSpan(text: "Давай "),
                  TextSpan(
                      text: "створимо \n",
                      style: TextStyle(color: Color(0xff0D08FF))),
                  TextSpan(text: "табір разом!"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Обери табірну програму, для того, щоб детальніше ознайомитись з нею.",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                color: Color(0xFF484482),
              ),
            ),
            const SizedBox(height: 50),
            CampCard(
              onTap: () {
                SharedPrefs().setChosenCamp(CampName.fiveDivideFour);
                context.read<MainPageCubit>().openFiveDivideFourCampPage();
              },
              title:
                  "Програма денного табору \"5/4 Місце, де тренують пееможців\"",
              imgAsset: "images/logo.png",
            ),
            const SizedBox(height: 24),
            CampCard(
              onTap: () {
                SharedPrefs().setChosenCamp(CampName.gameVsYou);
                context.read<MainPageCubit>().openGameVsYouCampPage();
              },
              title:
              "Програма денного табору \"Гра vs Ти\"",
              imgAsset: "images/logo_2_0.jpg",
            ),
            const SizedBox(height: 24),
            CampCard(
              onTap: () {
                SharedPrefs().setChosenCamp(CampName.skyLand);
                context.read<MainPageCubit>().openSkyLandCampPage();
              },
              title:
              "Програма денного табору \"СкайLand\"",
              imgAsset: "images/logo3.png",
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

}
