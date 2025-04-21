import 'package:camps_program/features/home_menu/data/program3_data.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/top_navigation_button1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import 'info_page_1bloc.dart';

enum PartOfDay { morning, evening }

class ScenePage extends StatefulWidget {
  const ScenePage({
    Key? key,
    required this.title,
    required this.numOfDay,
    required this.partOfDay,
    this.titleStyle = PageTitleStyle.usual,
    this.onDownloadTap,
    this.bgLinearGradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xfffcfcfe), Color(0xffa6a7ff)],
    ),
  }) : super(key: key);

  final int numOfDay;
  final PartOfDay partOfDay;
  final String title;
  final PageTitleStyle titleStyle;
  final Function? onDownloadTap;
  final LinearGradient bgLinearGradient;

  @override
  State<ScenePage> createState() => _ScenePageState();
}

class _ScenePageState extends State<ScenePage> {
  List<bool> topButtonsState = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.titleStyle == PageTitleStyle.usual ? widget.title : ""),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: widget.bgLinearGradient,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: widget.bgLinearGradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (widget.titleStyle == PageTitleStyle.underAppBar)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              Row(
                children: [
                  const SizedBox(width: 16),
                  Expanded(
                    child: TopNavigationButton1(
                      title: 'Сценарій',
                      isActive: topButtonsState[0],
                      onTap: () {
                        activateTopButton(0);
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TopNavigationButton1(
                      title: 'Рубрики',
                      isActive: topButtonsState[1],
                      onTap: () {
                        activateTopButton(1);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
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

  void activateTopButton(int number) {
    setState(() {
      switch (number) {
        case 1:
          topButtonsState[0] = false;
          topButtonsState[1] = true;
          break;
        default:
          topButtonsState[0] = true;
          topButtonsState[1] = false;
      }
    });
  }

  List<Widget> compactTextAndImages() {
    List<String> images = [];
    List<String> texts = [];

    if (widget.partOfDay == PartOfDay.evening) {
      texts = getEveningTexts();
      images = getEveningImages();
    } else {
      texts = getMorningTexts();
      images = getMorningImages();
    }

    List<Widget> list = [];
    int t = texts.length;
    int i = images.length;

    if (widget.onDownloadTap != null) {
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
            child: Image.asset(images[(images.length ?? 0) - i]),
          ),
        );
        list.add(const SizedBox(height: 10));
        i--;
      }
    }
    return list;
  }

  List<String> getMorningTexts() {
    switch (widget.numOfDay) {
      case 2:
        if (topButtonsState[1]) {
          return Program3Data.day2RubricMorningTxt;
        } else {
          return Program3Data.day2ScenariyMorningTxt;
        }
      case 3:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      case 4:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      case 5:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      default:
        if (topButtonsState[1]) {
          return Program3Data.day1RubricMorningTxt;
        } else {
          return Program3Data.day1ScenariyMorningTxt;
        }
    }
  }

  List<String> getEveningTexts() {
    switch (widget.numOfDay) {
      case 2:
        if (topButtonsState[1]) {
          return Program3Data.day2RubricEveningTxt;
        } else {
          return Program3Data.day2ScenariyEveningTxt;
        }
      case 3:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      case 4:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      case 5:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      default:
        if (topButtonsState[1]) {
          return Program3Data.day1RubricEveningTxt;
        } else {
          return Program3Data.day1ScenariyEveningTxt;
        }
    }
  }

  List<String> getMorningImages() {
    switch (widget.numOfDay) {
      case 2:
        if (topButtonsState[1]) {
          return []; // no images
        } else {
          return Program3Data.day2ScenariyMorningImg;
        }
      case 3:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      case 4:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      case 5:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      default:
        if (topButtonsState[1]) {
          return []; // no images
        } else {
          return []; // no images
        }
    }
  }

  List<String> getEveningImages() {
    switch (widget.numOfDay) {
      case 2:
        if (topButtonsState[1]) {
          return []; // no images
        } else {
          return []; // no images
        }
      case 3:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      case 4:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      case 5:
        if (topButtonsState[1]) {
          return [];
        } else {
          return [];
        }
      default:
        if (topButtonsState[1]) {
          return Program3Data.day1RubricEveningImg;
        } else {
          return []; // no images
        }
    }
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
