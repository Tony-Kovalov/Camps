import 'package:camps_program/features/home_menu/presentation/pages/shedule_example.dart';
import 'package:camps_program/features/home_menu/presentation/pages/speech_for_team.dart';
import 'package:flutter/material.dart';

import '../../../../app_colors.dart';

class OrganizationMomentsPage extends StatelessWidget {
  const OrganizationMomentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        title: const Text("Додаткові джерела"),
      ),
      body: Container(
        color: AppColors.primaryWhite,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                resMenuItem("Слово для команди", () {
                  open(context, SpeechForTeamPage());
                }),
                const SizedBox(height: 20),
                resMenuItem("Приклад розкладу", () {
                  open(context, SheduleExamplePage());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget resMenuItem(String title, Function() onTap) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: onTap,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Unbounded',
              decoration: TextDecoration.none,
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
