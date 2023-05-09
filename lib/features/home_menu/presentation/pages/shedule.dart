import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/shedule_table_content.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/custon_toggle.dart';
import 'package:flutter/material.dart';

class ShedulePageContent extends StatefulWidget {
  const ShedulePageContent({Key? key}) : super(key: key);

  @override
  State<ShedulePageContent> createState() => _ShedulePageContentState();
}

class _ShedulePageContentState extends State<ShedulePageContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Center(
            child: CustomToggle(
              onTap: (List<bool> isSelected) {},
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Розклад на сьогодні:",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Expanded(child: SheduleTableContent()),
        ],
      ),
    );
  }
}
