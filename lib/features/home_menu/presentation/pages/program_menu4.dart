import 'package:flutter/material.dart';

import '../../data/program4_data.dart';
import '../widgets/expandable_menu3.dart';
import '../widgets/sub_menu_card3.dart';
import 'info_page_1bloc.dart'; // ПОВЕРНУТО ІМПОРТ ДЛЯ PageTitleStyle
import 'info_page_3bloc.dart';

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

                  // ==========================================
                  // ДЕНЬ 1
                  // ==========================================
                  _buildDaySection(
                    title: "ДЕНЬ 1: БОЖИЙ БЕЗЛІМІТ",
                    icon: "",
                    children: [
                      _buildMenuCard(
                        "🔍 Активності дня (Станції)",
                            () => _openInfo(
                          "Активності дня",
                          Program4Data.planDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📜 Сценарій ранок",
                            () => _openInfo(
                          "Сценарій ранок",
                          Program4Data.scriptMorningDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📁 Сценарій вечір",
                            () => _openInfo(
                          "Сценарій вечір",
                          Program4Data.scriptEveningDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧩 Ігри на сцені (Ранок)",
                            () => _openInfo(
                          "Ігри на сцені (Ранок)",
                          Program4Data.gamesMorningDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧬 Ігри на сцені (Вечір)",
                            () => _openInfo(
                          "Ігри на сцені (Вечір)",
                          Program4Data.gamesEveningDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "⏳ Година для підлітків",
                            () => _openInfo(
                          "Година для підлітків",
                          Program4Data.teensHourDay1Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📦 Розпаковка",
                            () => _openInfo(
                          "Розпаковка",
                          Program4Data.unpackingDay1Txts,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ==========================================
                  // ДЕНЬ 2
                  // ==========================================
                  _buildDaySection(
                    title: "ДЕНЬ 2: ОБМЕЖЕННЯ ЧАСУ",
                    icon: "",
                    children: [
                      _buildMenuCard(
                        "⏳ Активності дня (Естафети та Загальнотабірка)",
                            () => _openInfo(
                          "Активності дня",
                          Program4Data.planDay2Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📜 Сценарій ранок",
                            () => _openInfo(
                          "Сценарій ранок",
                          Program4Data.scriptMorningDay2Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📁 Сценарій вечір",
                            () => _openInfo(
                          "Сценарій вечір",
                          Program4Data.scriptEveningDay2Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "⚠️ Ігри на сцені (Ранок)",
                            () => _openInfo(
                          "Ігри на сцені (Ранок)",
                          Program4Data.gamesMorningDay2Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "⚔️ Ігри на сцені (Вечір)",
                            () => _openInfo(
                          "Ігри на сцені (Вечір)",
                          Program4Data.gamesEveningDay2Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "⏳ Година для підлітків",
                            () => _openInfo(
                          "Година для підлітків",
                          Program4Data.teensHourDay2Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📦 Розпаковка",
                            () => _openInfo(
                          "Розпаковка",
                          Program4Data.unpackingDay2Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "👥 Командний челендж - зустріч лідерів",
                            () => _openInfo(
                          "Командний челендж",
                          Program4Data.teamChallengeDay2Txts,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ==========================================
                  // ДЕНЬ 3
                  // ==========================================
                  _buildDaySection(
                    title: "ДЕНЬ 3: ВНУТРІШНІ КРАДІЇ ЧАСУ",
                    icon: "",
                    children: [
                      _buildMenuCard(
                        "🕳️ Активності дня",
                            () => _openInfo(
                          "Активності дня",
                          Program4Data.planDay3Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📜 Сценарій ранок",
                            () => _openInfo(
                          "Сценарій ранок",
                          Program4Data.scriptMorningDay3Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📁 Сценарій вечір",
                            () => _openInfo(
                          "Сценарій вечір",
                          Program4Data.scriptEveningDay3Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧩 Ігри на сцені (Ранок)",
                            () => _openInfo(
                          "Ігри на сцені (Ранок)",
                          Program4Data.gamesMorningDay3Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧬 Ігри на сцені (Вечір)",
                            () => _openInfo(
                          "Ігри на сцені (Вечір)",
                          Program4Data.gamesEveningDay3Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📦 Розпаковка",
                            () => _openInfo(
                          "Розпаковка",
                          Program4Data.unpackingDay3Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "👥 Командний челендж - зустріч лідерів",
                            () => _openInfo(
                          "Командний челендж",
                          Program4Data.teamChallengeDay3Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧸 Апгрейд для малечі",
                            () => _openInfo(
                          "Апгрейд для малечі",
                          Program4Data.kidsUpgradeDay3Txts,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  // ==========================================
                  // ДЕНЬ 4
                  // ==========================================
                  _buildDaySection(
                    title: "ДЕНЬ 4: ЗОВНІШНІ КРАДІЇ ЧАСУ",
                    icon: "",
                    children: [
                      _buildMenuCard(
                        "🕳️ Активності дня",
                            () => _openInfo(
                          "Активності дня",
                          Program4Data.planDay4Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📜 Сценарій ранок",
                            () => _openInfo(
                          "Сценарій ранок",
                          Program4Data.scriptMorningDay4Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📁 Сценарій вечір",
                            () => _openInfo(
                          "Сценарій вечір",
                          Program4Data.scriptEveningDay4Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧩 Ігри на сцені (Ранок)",
                            () => _openInfo(
                          "Ігри на сцені (Ранок)",
                          Program4Data.gamesMorningDay4Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧬 Ігри на сцені (Вечір)",
                            () => _openInfo(
                          "Ігри на сцені (Вечір)",
                          Program4Data.gamesEveningDay4Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "📦 Розпаковка",
                            () => _openInfo(
                          "Розпаковка",
                          Program4Data.unpackingDay4Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "👥 Командний челендж - зустріч лідерів",
                            () => _openInfo(
                          "Командний челендж",
                          Program4Data.teamChallengeDay4Txts,
                        ),
                      ),
                      _buildMenuCard(
                        "🧸 Апгрейд для малечі",
                            () => _openInfo(
                          "Апгрейд для малечі",
                          Program4Data.kidsUpgradeDay4Txts,
                        ),
                      ),
                    ],
                  ),
                      const SizedBox(height: 20),



                  // ==========================================
                  // ДЕНЬ 5
                  // ==========================================
                      _buildDaySection(
                        title: "ДЕНЬ 5: ВНУТРІШНІ КРАДІЇ ЧАСУ",
                        icon: "️",
                        children: [
                          _buildMenuCard(
                            "🕳️ Активності дня",
                                () => _openInfo(
                              "Активності дня",
                              Program4Data.planDay5Txts,
                            ),
                          ),
                          _buildMenuCard(
                            "📜 Сценарій ранок",
                                () => _openInfo(
                              "Сценарій ранок",
                              Program4Data.scriptMorningDay5Txts,
                            ),
                          ),
                          _buildMenuCard(
                            "📁 Сценарій вечір",
                                () => _openInfo(
                              "Сценарій вечір",
                              Program4Data.scriptEveningDay5Txts,
                            ),
                          ),
                          _buildMenuCard(
                            "🧩 Ігри на сцені (Ранок)",
                                () => _openInfo(
                              "Ігри на сцені (Ранок)",
                              Program4Data.gamesMorningDay5Txts,
                            ),
                          ),
                          _buildMenuCard(
                            "🧬 Ігри на сцені (Вечір)",
                                () => _openInfo(
                              "Ігри на сцені (Вечір)",
                              Program4Data.gamesEveningDay5Txts,
                            ),
                          ),
                          _buildMenuCard(
                            "📦 Розпаковка",
                                () => _openInfo(
                              "Розпаковка",
                              Program4Data.unpackingDay5Txts,
                            ),
                          ),
                          _buildMenuCard(
                            "👥 Командний челендж - зустріч лідерів",
                                () => _openInfo(
                              "Командний челендж",
                              Program4Data.teamChallengeDay5Txts,
                            ),
                          ),
                          const SizedBox(height: 20)

                    ],
                  ),
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

  void open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}