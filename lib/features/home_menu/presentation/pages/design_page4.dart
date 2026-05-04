import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/download_button2.dart';

class DesignPage4 extends StatelessWidget {
  const DesignPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const BackButton(color: Colors.white),
        title: const Text(
          "Дизайн та поліграфія",
          style: TextStyle(color: Colors.white, fontFamily: 'Inter'),
        ),
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Вступний текст
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white.withOpacity(0.1)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Усі матеріали доступні для завантаження за посиланнями нижче. (Формати: pdf, png, svg).",
                          style: TextStyle(fontSize: 14, color: Colors.white70),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "З питань розробки індивідуального дизайну:",
                          style: TextStyle(color: Colors.blueAccent[100], fontSize: 13),
                        ),
                        const SizedBox(height: 4),
                        GestureDetector(
                          onTap: () => _launchURL("https://t.me/merelyroks"),
                          child: const Text(
                            "Telegram: @merelyroks",
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Секції дизайну згідно з фото
                  _buildDesignSection(
                    title: "Футболки",
                    imagePath: "images/secret-case-d-1.png",
                    driveUrl: "https://drive.google.com/drive/folders/1fTkQCwFSFEhvU_l_rhngeWCOKgkbD0Xo?usp=drive_link", // TODO: Додайте посилання
                  ),
                  _buildDesignSection(
                    title: "Мапа прогресу в таборі",
                    imagePath: "images/secret-case-d-2.png",
                    driveUrl: "https://drive.google.com/drive/folders/19ocatHoqaKd-GBfcPMe6Va1yEa7geDVg?usp=drive_link", // TODO: Додайте посилання
                  ),
                  _buildDesignSection(
                    title: "Кросворд, розмальовка",
                    imagePath: "images/secret-case-d-3.png",
                    driveUrl: "https://drive.google.com/drive/folders/18bnb0ZL9z8mcDTG8s0zBqbexMEzEeKYW?usp=drive_link", // TODO: Додайте посилання
                  ),
                  _buildDesignSection(
                    title: "Карта станцій",
                    imagePath: "images/secret-case-d-4.png",
                    driveUrl: "https://drive.google.com/drive/folders/1-b1CpsomS8HWDn4Yfgr-0wrHlUxxe2CE?usp=drive_link", // TODO: Додайте посилання
                  ),
                  _buildDesignSection(
                    title: "Заставка",
                    imagePath: "images/secret-case-d-5.png",
                    driveUrl: "https://drive.google.com/drive/folders/1ms6XQxFOydEZ5D4mpv3N4M9xLnHsEZ7I?usp=drive_link", // TODO: Додайте посилання
                  ),
                  _buildDesignSection(
                    title: "Елементи (окремо)",
                    imagePath: "images/secret-case-d-6.png",
                    driveUrl: "https://drive.google.com/drive/folders/1ebb6QH9LSNymWpPeXSOnfPN67QJ5ojsO?usp=drive_link", // TODO: Додайте посилання
                  ),
                  _buildDesignSection(
                    title: "Біблійні уроки",
                    imagePath: "images/secret-case-d-7.png",
                    driveUrl: "https://drive.google.com/drive/folders/1DQ_Frvk3UX5eE7d7qAcqAIXV8-MdCE6T?usp=drive_link", // TODO: Додайте посилання
                  ),
                  _buildDesignSection(
                    title: "Бейдж А7",
                    imagePath: "images/secret-case-d-8.png",
                    driveUrl: "https://drive.google.com/drive/folders/1RIchw6M3dWp1qBUV6--WVls6-P-A6NQM?usp=drive_link", // TODO: Додайте посилання
                  ),
                  _buildDesignSection(
                    title: "Банер",
                    imagePath: "images/secret-case-d-9.png",
                    driveUrl: "https://drive.google.com/drive/folders/14rCWcMJ0eViRN2Z_9Zb89PZHfFlIOV57?usp=drive_link", // TODO: Додайте посилання
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

  Widget _buildDesignSection({
    required String title,
    required String imagePath,
    required String driveUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: Column(
        children: [
          Text(
            title.toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.5,
              fontFamily: 'Inter',
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white.withOpacity(0.1)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 16),
          DownloadButton2(
            onPressed: () => _launchURL(driveUrl),
            bgColor: Colors.blueAccent.withOpacity(0.2),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}