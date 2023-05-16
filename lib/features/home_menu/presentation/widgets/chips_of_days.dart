import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ChipsOfDays extends StatelessWidget {
  const ChipsOfDays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Фішки днів"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '''Фішки табору - це елементи, якими можна урізноманітнити програму, заповнити кожну хвилинку.\n\n
ФІШКИ ЩОДЕННІ:\nФішка від наставника: кожного дня лотерейка на особистий час із наставником.\n\n
ФІШКА НА СЦЕНІ\nЦікаво представляти історію машин РІЗНИХ МАРОК кожного дня.\n
Розіграші національної їжі (в залежності від країн, де проводиться раллі).\n
ЧЕЛЕНЖІ''',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.left,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'https://youtube.com/shorts/jWVtiEDBUPI?feature=share',
                  style: TextStyle(color: Colors.blue[700]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://youtube.com/shorts/jWVtiEDBUPI?feature=share");
                    },
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'https://youtube.com/shorts/dZ_aRncuOuA?feature=share',
                  style: TextStyle(color: Colors.blue[700]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://youtube.com/shorts/dZ_aRncuOuA?feature=share");
                    },
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'https://youtube.com/shorts/UnU6hnXRic0?feature=share',
                  style: TextStyle(color: Colors.blue[700]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://youtube.com/shorts/UnU6hnXRic0?feature=share");
                    },
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'https://youtube.com/shorts/9qjYqLURUew?feature=share',
                  style: TextStyle(color: Colors.blue[700]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://youtube.com/shorts/9qjYqLURUew?feature=share");
                    },
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'https://youtu.be/cLlJWfefMis',
                  style: TextStyle(color: Colors.blue[700]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://youtu.be/cLlJWfefMis");
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // todo Tony
      throw 'Could not launch $url';
    }
  }
}
