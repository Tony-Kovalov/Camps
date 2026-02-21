import 'package:camps_program/features/home_menu/presentation/pages/pdf_screen.dart';
import 'package:camps_program/features/home_menu/presentation/pages/simple_page.dart';
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
        elevation: 0,
        title: const Text("Організаційні моменти"),
      ),
      body: Container(
        color: AppColors.primaryWhite,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
            child: Column(
              children: [
                const SizedBox(height: 20),
                resMenuItem("Слово для команди", () {
                  open(context, SimplePage(title: 'Слово для команди', text: GeneralRepo().textForTeam, urlOnDrive: 'https://drive.google.com/file/d/1k8TFyOIUsMDKeLP4lXLjyTGUaAFV0eMF/view?usp=sharing',));
                }),
                const SizedBox(height: 20),
                resMenuItem("Приклад розкладу", () {
                  open(context, SimplePage(title: "Приклад розкладу", text: GeneralRepo().textSchedule, urlOnDrive: "https://drive.google.com/file/d/1DWZMfpZfqQCxw5GKqgtLaZrMjq5tRr3-/view?usp=sharing"));
                }),
                const SizedBox(height: 20),
                resMenuItem("Година для тінсів", () {
                  open(context, const PdfScreen(title: "Година для тінсів", url: "https://drive.google.com/file/d/18kxl3enmF_L0zxnHQbyn4jI7OqeZErW9/view?usp=sharing"));
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
