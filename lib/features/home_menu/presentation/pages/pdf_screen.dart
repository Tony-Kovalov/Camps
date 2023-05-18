import 'package:flutter/material.dart';
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
          onWebResourceError: (WebResourceError error) {
           setState(() {
             isFailed = true;
           });
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text(widget.title),),
        body: getPlaceHolder(isReady, isFailed),
    );
  }

  Widget getPlaceHolder(bool isReady, bool isFailed) {
    if (isFailed) {
      return const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(child: Text("Перевір інтернет з'єднання і спробуй ще раз.", textAlign: TextAlign.center,)),
      );
    } else if (!isReady) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return WebViewWidget(controller: controller);
    }
  }
}

