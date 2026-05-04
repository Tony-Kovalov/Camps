import 'package:flutter/material.dart';

class DownloadButton2 extends StatelessWidget {
  const DownloadButton2({
    Key? key,
    this.onPressed,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  final Function? onPressed;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgColor,
        ),
        // ПРИБРАНО const перед Text
        child: Text(
          textAlign: TextAlign.center,
          "Завантажити",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 16,
            color: textColor, // ДОДАНО: Застосовуємо наш колір
          ),
        ),
      ),
    );
  }
}