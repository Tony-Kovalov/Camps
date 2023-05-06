import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondMenuCard extends StatelessWidget {
  SecondMenuCard({Key? key, required this.title, required this.onTap, this.isOpened = false}) : super(key: key);

  String title;
  Function() onTap;
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        side: const BorderSide(color: Colors.black),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Unbounded',
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Icon(isOpened ? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_right, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
