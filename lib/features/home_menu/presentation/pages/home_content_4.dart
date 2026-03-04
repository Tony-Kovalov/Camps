import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/program3_data2.dart';
import 'about_camp3.dart';
import 'design_page3.dart';
import 'info_page_1bloc.dart';
import 'info_page_3bloc.dart';
import 'program_menu4.dart';

class MyHomePageContent4 extends StatelessWidget {
  const MyHomePageContent4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text("📂", style: TextStyle(fontSize: 40)),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "МАТЕРІАЛИ СПРАВИ",
                          style: TextStyle(
                            color: Colors.blueAccent[100],
                            fontFamily: 'Inter',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                        const Text(
                          "Secret Case",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                _buildSecretCard(
                  context,
                  title: "Про програму Secret Case",
                  icon: "🕵️‍♂️",
                  onTap: () => open(context, AboutCamp3()),
                ),
                _buildSecretCard(
                  context,
                  title: "Розклад та Програма (Дні 1-5)",
                  icon: "📋",
                  // ТУТ ВІДКРИВАЄТЬСЯ НАШ ОНОВЛЕНИЙ program_menu4.dart
                  onTap: () => open(context, const ProgramMenu4Page()),
                  isHighlighted: true,
                ),
                _buildSecretCard(
                  context,
                  title: "Зустріч для команд перед табором",
                  icon: "🤝",
                  onTap: () => open(
                    context,
                    InfoPage3Bloc(
                      title: "Зустріч для команд",
                      texts: Program3Data2.meetingForTeamBeforeCamp,
                      images: null,
                      titleStyle: PageTitleStyle.underAppBar,
                      bgLinearGradient: getBgLinearGradient(),
                    ),
                  ),
                ),
                _buildSecretCard(
                  context,
                  title: "Дизайн та поліграфія",
                  icon: "🎨",
                  onTap: () => open(context, const DesignPage3()),
                ),
                _buildSecretCard(
                  context,
                  title: "Година до табору",
                  icon: "⏳",
                  onTap: () => open(
                    context,
                    InfoPage3Bloc(
                      title: "Година до табору",
                      texts: Program3Data2.hourBeforeCampTxts,
                      images: Program3Data2.hourBeforeCampImgs,
                      titleStyle: PageTitleStyle.underAppBar,
                      bgLinearGradient: getBgLinearGradient(),
                      onDownloadTap: () => _launchURL("https://drive.google.com/drive/folders/1YTsfy7rzk7_IBTGcSc95O5BRiBT11GrC?usp=drive_link"),
                    ),
                  ),
                ),
                _buildSecretCard(
                  context,
                  title: "Декор",
                  icon: "🎭",
                  onTap: () => open(
                    context,
                    InfoPage3Bloc(
                      title: "Декор",
                      texts: Program3Data2.decorationTxts,
                      images: Program3Data2.decorationImgs,
                      titleStyle: PageTitleStyle.underAppBar,
                      bgLinearGradient: getBgLinearGradient(),
                    ),
                  ),
                ),
                _buildSecretCard(
                  context,
                  title: "Апгрейт для малечі",
                  icon: "🧸",
                  onTap: () => open(
                    context,
                    InfoPage3Bloc(
                      title: "Апгрейт для малечі",
                      texts: [],
                      images: Program3Data2.upgradeForKidsImgs,
                      titleStyle: PageTitleStyle.underAppBar,
                      bgLinearGradient: getBgLinearGradient(),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSecretCard(BuildContext context, {required String title, required String icon, required VoidCallback onTap, bool isHighlighted = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: isHighlighted ? Colors.blueAccent.withOpacity(0.15) : Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isHighlighted ? Colors.blueAccent.withOpacity(0.5) : Colors.white.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Text(icon, style: const TextStyle(fontSize: 28)),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isHighlighted ? Colors.blueAccent[100] : Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: isHighlighted ? FontWeight.w700 : FontWeight.w500,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white.withOpacity(0.3),
                size: 16,
              ),
            ],
          ),
        ),
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

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}