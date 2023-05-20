import 'package:camps_program/features/home_menu/presentation/pages/shedule_example.dart';
import 'package:camps_program/features/home_menu/presentation/pages/simple_page.dart';
import 'package:camps_program/features/home_menu/presentation/pages/speech_for_team.dart';
import 'package:flutter/material.dart';

import '../../../../app_colors.dart';
import '../../data/general_repo.dart';

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
                  open(context, SimplePage(title: 'Слово для команди', text: GeneralRepo().textForTeam, urlOnDrive: 'https://drive.google.com/file/d/1k8TFyOIUsMDKeLP4lXLjyTGUaAFV0eMF/view?usp=sharing',));
                }),
                const SizedBox(height: 20),
                resMenuItem("Приклад розкладу", () {
                  open(context, SimplePage(title: "Приклад розкладу", text: GeneralRepo().textSchedule, urlOnDrive: "https://drive.google.com/file/d/1DWZMfpZfqQCxw5GKqgtLaZrMjq5tRr3-/view?usp=sharing"));
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
