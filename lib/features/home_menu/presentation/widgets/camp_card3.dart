import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampCard3 extends StatelessWidget {
  CampCard3({
    super.key,
    required this.title,
    required this.imgAsset,
  });

  final String title;
  final String imgAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xffe0dfff),
          borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imgAsset,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 170,
              child: Text(
                textAlign: TextAlign.center,
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: "Inter",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
