import 'package:flutter/material.dart';

class SecondMenuCard3 extends StatefulWidget {
  const SecondMenuCard3({
    Key? key,
    required this.title,
    required this.onTap,
    this.isOpened = false,
    this.isVisibleIcon = true,
  }) : super(key: key);

  final String title;
  final Function() onTap;
  final bool isOpened;
  final bool isVisibleIcon;

  @override
  State<SecondMenuCard3> createState() => _SecondMenuCardState2();
}

class _SecondMenuCardState2 extends State<SecondMenuCard3> {

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color(0xccffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        side: const BorderSide(style: BorderStyle.none),
      ),
      onPressed: () {
        widget.onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    color: Colors.black,
                  ),
                ),
              ),
              Visibility(
                visible: widget.isVisibleIcon,
                child: Icon(
                  widget.isOpened
                      ? Icons.keyboard_arrow_down_outlined
                      : Icons.keyboard_arrow_right,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
