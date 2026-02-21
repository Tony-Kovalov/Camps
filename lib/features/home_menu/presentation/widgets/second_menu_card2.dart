import 'package:flutter/material.dart';

class SecondMenuCard2 extends StatefulWidget {
  const SecondMenuCard2({
    Key? key,
    required this.title,
    required this.onTap,
    this.isOpened = false,
    this.isOpenEffectEnabled = true,
    this.isVisibleIcon = true,
  }) : super(key: key);

  final String title;
  final Function() onTap;
  final bool isOpened;
  final bool isOpenEffectEnabled;
  final bool isVisibleIcon;

  @override
  State<SecondMenuCard2> createState() => _SecondMenuCardState2();
}

class _SecondMenuCardState2 extends State<SecondMenuCard2> {
  Color backgroundColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        side: const BorderSide(color: Colors.white),
      ),
      onPressed: () {
        if (widget.isOpenEffectEnabled) {
          setState(() {
            if (widget.isOpened) {
              backgroundColor = const Color(0xffffffff);
            } else {
              backgroundColor = const Color(0xff0d08ff);
            }
          });
        }
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
                  style: TextStyle(
                    color: !widget.isOpened ? Colors.black : Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Visibility(
                visible: widget.isVisibleIcon,
                child: Icon(
                  widget.isOpened
                      ? Icons.keyboard_arrow_down_outlined
                      : Icons.keyboard_arrow_right,
                  color: !widget.isOpened ? Colors.black : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
