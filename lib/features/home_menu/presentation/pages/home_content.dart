import 'package:camps_program/features/home_menu/presentation/pages/about_camp.dart';
import 'package:camps_program/features/home_menu/presentation/pages/additional_res.dart';
import 'package:camps_program/features/home_menu/presentation/pages/design_page.dart';
import 'package:camps_program/features/home_menu/presentation/pages/organization_moments.dart';
import 'package:camps_program/features/home_menu/presentation/pages/pdf_screen.dart';
import 'package:camps_program/features/home_menu/presentation/pages/program_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/card.dart';
import '../widgets/yellow_long_card.dart';

class MyHomePageContent extends StatelessWidget {
  const MyHomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 0, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            YellowLongCard(
              title: "ПРО ТАБІР",
              onTap: () {
                open(context, AboutCampPage());
              },
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                MainCard(
                  title: 'програма\nтабору',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProgramMenuPage()),
                    );
                  },
                ),
                const SizedBox(width: 14),
                MainCard(
                  title: 'дизайн\nтабору',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DesignPage()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                MainCard(
                  title: 'фішки\nднів',
                  onTap: () {
                    open(context,  PdfScreen(title: "Фішки днів", url: "https://drive.google.com/file/d/1AYqM1JHWAUQsACaCeMgHBxOodwDZgr3h/view?usp=sharing"));
                  },
                ),
                const SizedBox(width: 14),
                MainCard(
                  title: 'робота зі\nсоцмережами',
                  onTap: () {
                    _launchURL("https://drive.google.com/file/d/1pxKqE1VHasEvbR0_6DPWR8sSjn-m1rKX/view?usp=sharing");
                  },
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                MainCard(
                  title: 'організаційні\nмоменти роботи\nу таборі',
                  onTap: () {
                    open(context, const OrganizationMomentsPage());
                  },
                ),
                const SizedBox(width: 14),
                MainCard(
                  title: 'додаткові\nджерела',
                  onTap: () {
                    open(context, const AdditionalResPage());
                  },
                ),
              ],
            ),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }

  open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else { // todo Tony
      throw 'Could not launch $url';
    }
  }
}
