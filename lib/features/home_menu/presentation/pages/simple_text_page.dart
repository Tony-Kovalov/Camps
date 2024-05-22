import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class SimpleTextPage extends StatelessWidget {
  const SimpleTextPage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xfffefeff), Color(0xff2520FF)],
          ),
        ),
        child: SingleChildScrollView(
          child: HtmlWidget(text),
        ),
      ),
    );
  }
}
