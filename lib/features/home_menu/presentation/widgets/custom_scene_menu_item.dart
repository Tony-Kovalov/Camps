import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSceneMenuItem extends StatefulWidget {
  CustomSceneMenuItem({Key? key, required this.title, required this.onTap}) : super(key: key);

  String title;
  Function() onTap;

  @override
  State<CustomSceneMenuItem> createState() => _CustomSceneMenuItemState();
}

class _CustomSceneMenuItemState extends State<CustomSceneMenuItem> {

  Color backgroundColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (backgroundColor == const Color(0xffffffff)) {
            backgroundColor = AppColors.primaryYellow;
          } else {
            backgroundColor = const Color(0xffffffff);
          }
        });
        widget.onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
          border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(widget.title),
        ),
      ),
    );
  }
}
