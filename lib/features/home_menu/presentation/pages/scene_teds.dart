import 'package:flutter/material.dart';

import '../../../../app_colors.dart';

class SceneTedsPage extends StatelessWidget {
  const SceneTedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryWhite,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Center(child: Text("Ми працюємо над цим")),
          ),
        ),
      ),
    );
  }
}
