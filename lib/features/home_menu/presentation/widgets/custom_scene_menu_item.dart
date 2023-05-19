import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSceneMenuItem extends StatelessWidget {
  CustomSceneMenuItem({Key? key, required this.title, required this.onTap, this.isActive = false}) : super(key: key);

  String title;
  Function() onTap;
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isActive ? AppColors.primaryYellow : Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(title),
        ),
      ),
    );
  }
}
