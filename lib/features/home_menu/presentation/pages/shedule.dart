import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/shedule_table_content.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/custon_toggle.dart';
import 'package:flutter/material.dart';

class SchedulePageContent extends StatefulWidget {
  const SchedulePageContent({Key? key}) : super(key: key);

  @override
  State<SchedulePageContent> createState() => _SchedulePageContentState();
}

class _SchedulePageContentState extends State<SchedulePageContent> {

  bool isTable = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Center(
            child: CustomToggle(
              onTap: (List<bool> isSelected) {
                setState(() {
                  isTable = isSelected[0];
                });
              },
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
          getContent(isTable)
        ],
      ),
    );
  }

  Widget getContent(bool isTable) {
    if (isTable) {
      return const Expanded(child: SheduleTableContent());
    } else {
      return const Expanded(child: Center(child: Text("Ми працюємо над цим..."),));
    }
  }

}
