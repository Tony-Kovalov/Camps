import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/program_menu.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/card.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/yellow_long_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text("5/4", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36)),
            SizedBox(width: 10),
            Text("МІСЦЕ\nДЕ ТРЕНУЮТЬ\nПЕРЕМОЖЦІВ", style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
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
    );
  }
}
