import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'features/home_menu/presentation/pages/home_empty.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColors.getMaterialColor(AppColors.primaryWhite),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
            backgroundColor: MaterialStateColor.resolveWith((states) => AppColors.primaryYellow),
          ),
        ),
      ),
      home: const MyHomeEmptyPage(),
    );
  }
}
