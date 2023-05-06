import 'package:flutter/material.dart';

class SimpleTextPage extends StatelessWidget {
  SimpleTextPage({Key? key, required this.title, required this.text}) : super(key: key);

  String title;
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: SingleChildScrollView(
          child: Text(text, style: const TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}
