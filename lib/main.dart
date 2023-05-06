import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/presentation/pages/program_menu.dart';
import 'package:flutter/material.dart';

import 'features/home_menu/presentation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColors.getMaterialColor(AppColors.primaryWhite),
      ),
      home: MyHomePage(),
    );
  }
}

