import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/program4_data.dart';
import '../widgets/expandable_menu3.dart';
import '../widgets/sub_menu_card3.dart';
import 'info_page_1bloc.dart';
import 'info_page_3bloc.dart';
import 'video_scene3.dart';

class ProgramMenu4Page extends StatefulWidget {
  const ProgramMenu4Page({super.key});

  @override
  State<ProgramMenu4Page> createState() => _ProgramMenu4PageState();
}

class _ProgramMenu4PageState extends State<ProgramMenu4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F172A),
              Color(0xFF1E293B),
              Color(0xFF020617),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        "🕵️‍♂️",
                        style: TextStyle(fontSize: 40),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SECRET CASE",
                            style: TextStyle(
                              color: Colors.blueAccent[100],
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          const Text(
                            "Архів справ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // ДЕНЬ 1
                  _buildDaySection(
                    title: "ДЕНЬ 1: БОЖИЙ БЕЗЛІМІТ",
                    icon: "🔍",
                    children: [
                      _buildMenuCard(
                        "🔍 План розслідування (Станції)",
                            () => _openInfo(
                          "План розслідування",
                          Program4Data.planDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📜 Ранковий сценарій",
                            () => _openInfo(
                          "Ранковий сценарій",
                          Program4Data.scriptMorningDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📁 Вечірній аналіз (Сценарій)",
                            () => _openInfo(
                          "Вечірній сценарій",
                          Program4Data.scriptEveningDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧩 Тестування системи (Ігри)",
                            () => _openInfo(
                          "Ранкові ігри",
                          Program4Data.gamesMorningDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧬 Лабораторна робота (Ігри)",
                            () => _openInfo(
                          "Вечірні ігри",
                          Program4Data.gamesEveningDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📦 Розпаковка доказів",
                            () => _openInfo(
                          "Розпаковка",
                          Program4Data.unpackingDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📹 Секретні медіа-файли",
                            () => open(
                          context,
                          const VideoScene3(
                            numOfDay: 1,
                            links: {
                              "🎵 Музика під сцену": "https://youtu.be/qYaKzpMdBaM", //change
                              "♾ Безліміт Божої любові": "https://www.youtube.com/watch?v=rWlWAvWI8gE&t=180s", //change
                              "📱 Гра 'Стікер-ти'": "https://www.instagram.com/reel/DT01iJvEdrk/?igsh=bzI5Y2xqdjdmdW1j", //change
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDaySection({required String title, required String icon, required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: ExpandableMenu3(
        title: "$icon $title",
        children: children,
      ),
    );
  }

  Widget _buildMenuCard(String title, Function() onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SubMenuCard3(
        title: title,
        onTap: onTap,
      ),
    );
  }

  void _openInfo(String title, List<String> texts) {
    open(
      context,
      InfoPage3Bloc(
        title: title,
        texts: texts,
        images: null,
        titleStyle: PageTitleStyle.underAppBar,
        bgLinearGradient: getBgLinearGradient(),
      ),
    );
  }

  LinearGradient getBgLinearGradient() {
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
    );
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}