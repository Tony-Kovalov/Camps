import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class SimpleTextPage3 extends StatelessWidget {
  const SimpleTextPage3({
    super.key,
    required this.htmlText,
  });

  final String htmlText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffffffff), Color(0xff46a6ff)],
          ),
        ),
        child: SingleChildScrollView(
          child: HtmlWidget(htmlText),
        ),
      ),
    );
  }
}
