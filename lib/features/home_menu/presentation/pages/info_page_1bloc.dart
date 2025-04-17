import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

enum PageTitleStyle { usual, underAppBar }

class InfoPage1Bloc extends StatelessWidget {
  const InfoPage1Bloc({
    Key? key,
    required this.title,
    required this.texts,
    required this.images,
    this.titleStyle = PageTitleStyle.usual,
    this.onDownloadTap,
    this.bgLinearGradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xfffcfcfe), Color(0xffa6a7ff)],
    ),
  }) : super(key: key);

  final String title;
  final List<String> texts;
  final List<String>? images;
  final PageTitleStyle titleStyle;
  final Function? onDownloadTap;
  final LinearGradient bgLinearGradient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleStyle == PageTitleStyle.usual ? title : ""),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: bgLinearGradient,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: bgLinearGradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (titleStyle == PageTitleStyle.underAppBar)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              Padding(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: compactTextAndImages(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> compactTextAndImages() {
    List<Widget> list = [];
    int t = texts.length;
    int i = images?.length ?? 0;

    if (onDownloadTap != null) {
      list.add(_getDownloadButton());
      list.add(const SizedBox(height: 16));
    }

    while (t + i > 0) {
      if (t > 0) {
        list.add(HtmlWidget(texts[texts.length - t]));
        list.add(const SizedBox(height: 10));
        t--;
      }
      if (i > 0) {
        list.add(
          Center(
            child: Image.asset(images![(images?.length ?? 0) - i]),
          ),
        );
        list.add(const SizedBox(height: 10));
        i--;
      }
    }
    return list;
  }

  Widget _getDownloadButton() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffaed8ff),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      alignment: Alignment.center,
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "Завантажити матеріал",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
