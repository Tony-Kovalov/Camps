import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class InfoPage1Bloc extends StatelessWidget {
  InfoPage1Bloc({
    Key? key,
    required this.texts,
    required this.images,
  }) : super(key: key);

  List<String> texts;
  List<String> images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xfffcfcfe), Color(0xffa6a7ff)],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffa6a7ff), Color(0xff6c69ff)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: compactTextAndImages(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> compactTextAndImages() {
    List<Widget> list = [];
    int t = texts.length;
    int i = images.length;
    while (t + i > 0) {
      if (t > 0) {
        list.add(HtmlWidget(texts[texts.length - t]));
        list.add(const SizedBox(height: 10));
        t--;
      }
      if (i > 0) {
        list.add(Image.asset(images[images.length - i]));
        list.add(const SizedBox(height: 10));
        i--;
      }
    }
    return list;
  }
}
