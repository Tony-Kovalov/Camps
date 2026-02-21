import 'package:flutter/material.dart';

class CampCard2 extends StatelessWidget {
  const CampCard2({
    super.key,
    required this.title,
    required this.imgAsset,
    this.onTap,
  });

  final String title;
  final String imgAsset;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
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
              const SizedBox(width: 8),
              Image.asset(
                imgAsset,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
