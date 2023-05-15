import 'package:flutter/material.dart';

class DesignContainer extends StatelessWidget {
  DesignContainer({Key? key, required this.child, this.height}) : super(key: key);

  Widget child;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: child,
      ),
    );
  }
}
