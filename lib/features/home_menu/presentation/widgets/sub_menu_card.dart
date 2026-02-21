import 'package:flutter/material.dart';

import '../../../../app_colors.dart';

class SubMenuCard extends StatelessWidget {
  const SubMenuCard({Key? key, required this.title, required this.onTap}) : super(key: key);

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryYellow, backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          side: const BorderSide(color: Colors.black),
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Unbounded',
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right, color: Colors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
