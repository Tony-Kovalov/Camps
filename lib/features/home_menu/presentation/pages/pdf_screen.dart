import 'package:camps_program/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PdfScreen extends StatefulWidget {
  PdfScreen({Key? key, required this.title, required this.url}) : super(key: key);

  String title;
  String url;

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  late WebViewController controller;

  bool isReady = false;
  bool isFailed = false;

  String activeUrl = "";

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (progress == 100) {
              setState(() {
                isReady = true;
              });
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) async {
            setState(() {
              isFailed = true;
            });
            if (await InternetConnectionChecker().hasConnection) {
              _launchActiveURL();
            }
          },
          onNavigationRequest: (NavigationRequest request) {
            activeUrl = request.url;
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: AppColors.primaryWhite,
        elevation: 0,
        actions: [
          GestureDetector(
            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 8), child: Center(child: Text("Назад"))),
            onTap: () async {
              if (await controller.canGoBack()) {
                controller.goBack();
              } else {
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
      body: getPlaceHolder(isReady, isFailed),
    );
  }

  Widget getPlaceHolder(bool isReady, bool isFailed) {
    if (isFailed) {
      return const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
            child: Text(
          "Перевір інтернет з'єднання і спробуй ще раз.",
          textAlign: TextAlign.center,
        )),
      );
    } else if (!isReady) {
      return const Center(child: CircularProgressIndicator(color: AppColors.primaryYellow,));
    } else {
      return WebViewWidget(controller: controller);
    }
  }

  _launchActiveURL() async {
    final uri = Uri.parse(activeUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else { // todo Tony
      throw 'Could not launch $activeUrl';
    }
  }
}
