import 'package:flutter/material.dart';

class DownloadButton2 extends StatelessWidget {
  const DownloadButton2({
    Key? key,
    this.onPressed,
    this.bgColor = Colors.white,
  }) : super(key: key);

  final Function? onPressed;
  final Color bgColor;

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
