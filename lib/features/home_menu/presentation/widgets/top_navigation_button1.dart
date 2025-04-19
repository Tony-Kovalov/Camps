import 'package:flutter/material.dart';

class TopNavigationButton1 extends StatelessWidget {
  TopNavigationButton1({
    required this.title,
    required this.onTap,
    this.isActive = false,
    super.key,
  });

  final bool isActive;
  final String title;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xffaed8ff) : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: Colors.white),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
