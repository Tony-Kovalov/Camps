import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';

class DownloadButton2 extends StatelessWidget {
  DownloadButton2({Key? key, this.onPressed}) : super(key: key);

  Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: const Text(
          textAlign: TextAlign.center,
          "Завантажити",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
