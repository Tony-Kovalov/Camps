import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/camp_card.dart';

class ChooseProgram extends StatelessWidget {
  const ChooseProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xfffefeff), Color(0xff2520FF)],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 150),
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
              title:
                  "Програма денного табору \"5/4 Місце, де тренують пееможців\"",
              imgAsset: "images/logo.png",
            ),
            const SizedBox(height: 24),
            CampCard(
              title:
              "Програма денного табору \"Гра vs Ти\"",
              imgAsset: "images/logo.png",
            ),
          ],
        ),
      ),
    );
  }
}
