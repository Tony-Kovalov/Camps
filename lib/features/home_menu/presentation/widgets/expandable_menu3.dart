import 'package:camps_program/features/home_menu/presentation/widgets/second_menu_card3.dart';
import 'package:flutter/cupertino.dart';

class ExpandableMenu3 extends StatefulWidget {
  const ExpandableMenu3({Key? key, required this.title, this.children});

  final String title;
  final List<Widget>? children;

  @override
  State<ExpandableMenu3> createState() => _ExpandableMenu3State();
}

class _ExpandableMenu3State extends State<ExpandableMenu3> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondMenuCard3(
          title: widget.title,
          onTap: () {
            setState(() {
              isOpened = !isOpened;
            });
          },
          isOpened: isOpened,
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeIn,
          child: SizedBox(
            height: !isOpened ? 0 : null,
            child: Column(
              children: widget.children ?? [],
            ),
          ),
        ),
      ],
    );
  }
}
