import 'package:camps_program/features/home_menu/presentation/widgets/second_menu_card4.dart';
import 'package:flutter/cupertino.dart';

class ExpandableMenu4 extends StatefulWidget {
  const ExpandableMenu4({Key? key, required this.title, this.children});

  final String title;
  final List<Widget>? children;

  @override
  State<ExpandableMenu4> createState() => _ExpandableMenu4State();
}

class _ExpandableMenu4State extends State<ExpandableMenu4> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondMenuCard4(
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
