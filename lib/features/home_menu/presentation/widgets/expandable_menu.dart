import 'package:camps_program/features/home_menu/presentation/widgets/second_menu_card.dart';
import 'package:flutter/cupertino.dart';

class ExpandableMenu extends StatefulWidget {
  const ExpandableMenu({Key? key, required this.title, this.children}) : super(key: key);

  final String title;
  final List<Widget>? children;

  @override
  State<ExpandableMenu> createState() => _ExpandableMenuState();
}

class _ExpandableMenuState extends State<ExpandableMenu> {

  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondMenuCard(
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
