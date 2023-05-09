import 'package:flutter/material.dart';

import '../../../../app_colors.dart';

class SubMenuCard extends StatelessWidget {
  SubMenuCard({Key? key, required this.title, required this.onTap}) : super(key: key);

  String title;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          primary: AppColors.primaryYellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          side: const BorderSide(color: Colors.black),
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
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
      ),
    );
  }
}
