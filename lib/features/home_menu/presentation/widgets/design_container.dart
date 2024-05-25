import 'package:flutter/material.dart';

class DesignContainer extends StatelessWidget {
  const DesignContainer({Key? key, required this.child, this.height}) : super(key: key);

  final Widget child;
  final double? height;

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
