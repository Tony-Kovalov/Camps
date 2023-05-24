import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/home_content.dart';
import 'package:camps_program/features/home_menu/presentation/pages/notes.dart';
import 'package:camps_program/features/home_menu/presentation/pages/settings.dart';
import 'package:camps_program/features/home_menu/presentation/pages/shedule.dart';
import 'package:camps_program/features/home_menu/presentation/pages/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomeEmptyPage extends StatefulWidget {
  const MyHomeEmptyPage({Key? key}) : super(key: key);

  @override
  State<MyHomeEmptyPage> createState() => _MyHomeEmptyPageState();
}

class _MyHomeEmptyPageState extends State<MyHomeEmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: SvgPicture.asset(
            "assets/logo.svg",
            height: 45,
            semanticsLabel: 'Перемога'
        ),
      ),
      body: getBody(_selectedIndex),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: AppColors.primaryWhite,
      //   type: BottomNavigationBarType.fixed,
      //   onTap: _onItemTapped,
      //   currentIndex: _selectedIndex,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 8),
      //         child: Column(
      //           children: [
      //             SvgPicture.asset(
      //                 "assets/settings.svg",
      //                 height: 35,
      //                 semanticsLabel: 'Налаштування'
      //             ),
      //             const SizedBox(height: 3),
      //             const Text("Налаштування", style: TextStyle(fontSize: 9)),
      //           ],
      //         ),
      //       ),
      //       activeIcon: Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 8),
      //         child: Column(
      //           children: [
      //             SvgPicture.asset(
      //                 "assets/settings.svg",
      //                 height: 35,
      //                 semanticsLabel: 'Налаштування',
      //                 color: Colors.purple[100]
      //             ),
      //             const SizedBox(height: 3),
      //             const Text("Налаштування", style: TextStyle(fontSize: 9, color: Color(0xFFD8B7DF))),
      //           ],
      //         ),
      //       ),
      //       label: 'Calls',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Column(
      //         children: [
      //           SvgPicture.asset(
      //               "assets/clipboard.svg",
      //               height: 35,
      //               semanticsLabel: 'Завдання'
      //           ),
      //           const SizedBox(height: 3),
      //           const Text("Завдання", style: TextStyle(fontSize: 9)),
      //         ],
      //       ),
      //       activeIcon: Column(
      //         children: [
      //           SvgPicture.asset(
      //               "assets/clipboard.svg",
      //               height: 35,
      //               semanticsLabel: 'Завдання',
      //               color: Colors.purple[100]
      //           ),
      //           const SizedBox(height: 3),
      //           const Text("Завдання", style: TextStyle(fontSize: 9, color: Color(0xFFD8B7DF))),
      //         ],
      //       ),
      //       label: 'Calls',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Container(
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: AppColors.primaryYellow,
      //           border: Border.all(color: Colors.black),
      //         ),
      //         child: Padding(
      //           padding: const EdgeInsets.all(10),
      //           child: SvgPicture.asset(
      //               "assets/home.svg",
      //               height: 35,
      //               semanticsLabel: 'Головна'
      //           ),
      //         ),
      //       ),
      //       label: "Головна",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Column(
      //         children: [
      //           SvgPicture.asset(
      //               "assets/file_text.svg",
      //               height: 35,
      //               semanticsLabel: 'Нотатки'
      //           ),
      //           const SizedBox(height: 3),
      //           const Text("Нотатки", style: TextStyle(fontSize: 9)),
      //         ],
      //       ),
      //       activeIcon: Column(
      //         children: [
      //           SvgPicture.asset(
      //               "assets/file_text.svg",
      //               height: 35,
      //               semanticsLabel: 'Нотатки',
      //               color: Colors.purple[100]
      //           ),
      //           const SizedBox(height: 3),
      //           const Text("Нотатки", style: TextStyle(fontSize: 9, color: Color(0xFFD8B7DF))),
      //         ],
      //       ),
      //       label: 'Calls',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Column(
      //         children: [
      //           SvgPicture.asset(
      //               "assets/clock.svg",
      //               height: 35,
      //               semanticsLabel: 'Розклад'
      //           ),
      //           const SizedBox(height: 3),
      //           const Text("Розклад", style: TextStyle(fontSize: 9)),
      //         ],
      //       ),
      //       activeIcon: Column(
      //         children: [
      //           SvgPicture.asset(
      //               "assets/clock.svg",
      //               height: 35,
      //               semanticsLabel: 'Розклад',
      //               color: Colors.purple[100]
      //           ),
      //           const SizedBox(height: 3),
      //           const Text("Розклад", style: TextStyle(fontSize: 9, color: Color(0xFFD8B7DF))),
      //         ],
      //       ),
      //       label: 'Calls',
      //     ),
      //   ],
      // ),
    );
  }

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget? getBody(int selectedIndex) {
    switch (selectedIndex) {
      case 0: return const SettingsPage();
      case 1: return const TasksPage();
      case 2: return const MyHomePageContent();
      case 3: return const NotesPage();
      case 4: return const SchedulePageContent();
    }
  }
}
