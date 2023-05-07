import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/program_menu.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/card.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/yellow_long_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("images/logo.png",),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              YellowLongCard(
                title: "ПРО ТАБІР",
                onTap: () {},
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  MainCard(
                    title: 'програма\nтабору',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProgramMenuPage()),
                      );
                    },
                  ),
                  const SizedBox(width: 14),
                  MainCard(
                    title: 'дизайн\nтабору',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  MainCard(
                    title: 'фішки\nднів',
                    onTap: () {},
                  ),
                  const SizedBox(width: 14),
                  MainCard(
                    title: 'робота зі\nсоцмережами',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  MainCard(
                    title: 'організаційні\nмоменти роботи\nу таборі',
                    onTap: () {},
                  ),
                  const SizedBox(width: 14),
                  MainCard(
                    title: 'додаткові\nджерела',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
