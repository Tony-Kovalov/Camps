import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';

class YellowLongCard extends StatelessWidget {
  YellowLongCard({Key? key, required this.title, required this.onTap}) : super(key: key);

  String title;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.primaryYellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          side: const BorderSide(color: Colors.black),
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Unbounded',
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
