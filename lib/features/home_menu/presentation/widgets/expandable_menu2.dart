import 'package:camps_program/features/home_menu/presentation/widgets/second_menu_card2.dart';
import 'package:flutter/cupertino.dart';

class ExpandableMenu2 extends StatefulWidget {
  const ExpandableMenu2({Key? key, required this.title, this.children}) : super(key: key);

  final String title;
  final List<Widget>? children;

  @override
  State<ExpandableMenu2> createState() => _ExpandableMenuState2();
}

class _ExpandableMenuState2 extends State<ExpandableMenu2> {

  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondMenuCard2(
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
