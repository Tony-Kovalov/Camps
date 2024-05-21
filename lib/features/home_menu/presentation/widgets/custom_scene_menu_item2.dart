import 'package:flutter/material.dart';

class CustomSceneMenuItem2 extends StatelessWidget {
  CustomSceneMenuItem2(
      {Key? key,
      required this.title,
      required this.onTap,
      this.isActive = false})
      : super(key: key);

  String title;
  Function() onTap;
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive ? Color(0xff0d08ff) : Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              color: isActive ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
