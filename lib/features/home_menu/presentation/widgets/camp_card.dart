import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampCard extends StatelessWidget {
  CampCard({
    super.key,
    required this.title,
    required this.imgAsset,
  });

  final String title;
  final String imgAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xffe0dfff),
          borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
            SizedBox(
              width: 170,
              child: Text(
                title,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
                child: Image.asset(
              imgAsset,
            )),
          ],
        ),
      ),
    );
  }
}
