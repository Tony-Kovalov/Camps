import 'package:camps_program/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondMenuCard extends StatefulWidget {
  SecondMenuCard({Key? key, required this.title, required this.onTap, this.isOpened = false}) : super(key: key);

  String title;
  Function() onTap;
  bool isOpened = false;

  @override
  State<SecondMenuCard> createState() => _SecondMenuCardState();
}

class _SecondMenuCardState extends State<SecondMenuCard> {

  Color backgroundColor = Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: () {
        setState(() {
          if (backgroundColor == AppColors.primaryYellow) {
            backgroundColor = const Color(0xffffffff);
          } else {
            backgroundColor = AppColors.primaryYellow;
          }
        });
        widget.onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Unbounded',
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Icon(widget.isOpened ? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_right, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
