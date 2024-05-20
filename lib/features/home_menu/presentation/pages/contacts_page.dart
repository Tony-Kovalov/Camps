import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xfffefeff), Color(0xff2520FF)],
        ),
      ),
      padding: const EdgeInsets.only(left: 20, top: 16, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Котакти",
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            "Ти можеш знайти однодумців, обмінюватися досвідом та отримати багато корисної інформації в телеграм-каналі «Християнські клуби»",
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Color(0xff524e82),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "Телеграм канал \“Християнські клуби\”",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
