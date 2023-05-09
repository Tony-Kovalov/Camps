import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/home_content.dart';
import 'package:camps_program/features/home_menu/presentation/pages/program_menu.dart';
import 'package:camps_program/features/home_menu/presentation/pages/shedule.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/card.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/yellow_long_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeEmptyPage extends StatefulWidget {
  const MyHomeEmptyPage({Key? key}) : super(key: key);

  @override
  State<MyHomeEmptyPage> createState() => _MyHomeEmptyPageState();
}

class _MyHomeEmptyPageState extends State<MyHomeEmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("images/logo.png"),
      ),
      body: getBody(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: const [
                Icon(Icons.settings_outlined, color: Colors.black, size: 35),
                SizedBox(height: 3),
                Text("Налаштування", style: TextStyle(fontSize: 9)),
              ],
            ),
            activeIcon: Column(
              children: [
                Icon(Icons.settings_outlined, color: Colors.purple[100], size: 35),
                const SizedBox(height: 3),
                const Text("Налаштування", style: TextStyle(fontSize: 9, color: Color(0xFFD8B7DF))),
              ],
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: const [
                Icon(Icons.list_alt, color: Colors.black, size: 35),
                SizedBox(height: 3),
                Text("Завдання", style: TextStyle(fontSize: 9)),
              ],
            ),
            activeIcon: Column(
              children: [
                Icon(Icons.list_alt, color: Colors.purple[100], size: 35),
                const SizedBox(height: 3),
                const Text("Завдання", style: TextStyle(fontSize: 9, color: Color(0xFFD8B7DF))),
              ],
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryYellow,
                border: Border.all(color: Colors.black),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
            label: "Головна",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: const [
                Icon(Icons.note_alt_outlined, color: Colors.black, size: 35),
                SizedBox(height: 3),
                Text("Нотатки", style: TextStyle(fontSize: 9)),
              ],
            ),
            activeIcon: Column(
              children: [
                Icon(Icons.note_alt_outlined, color: Colors.purple[100], size: 35),
                const SizedBox(height: 3),
                const Text("Нотатки", style: TextStyle(fontSize: 9, color: Color(0xFFD8B7DF))),
              ],
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: const [
                Icon(Icons.access_time_outlined, color: Colors.black, size: 35),
                SizedBox(height: 3),
                Text("Розклад", style: TextStyle(fontSize: 9)),
              ],
            ),
            activeIcon: Column(
              children: [
                Icon(Icons.access_time_outlined, color: Colors.purple[100], size: 35),
                const SizedBox(height: 3),
                const Text("Розклад", style: TextStyle(fontSize: 9, color: Color(0xFFD8B7DF))),
              ],
            ),
            label: 'Calls',
          ),
        ],
      ),
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
      case 0: return null;
      case 1: return null;
      case 2: return const MyHomePageContent();
      case 3: return null;
      case 4: return const ShedulePageContent();
    }
  }
}
