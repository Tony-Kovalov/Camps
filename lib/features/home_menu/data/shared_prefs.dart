import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  Future<void> setChosenCamp(CampName campName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('campName', campName.name);
  }

  CampName getChosenCamp(SharedPreferences prefs) {
    String camp = prefs.getString('campName') ?? "unknown";
    CampName campName =
        CampName.values.firstWhere((element) => element.name == camp);
    return campName;
  }
}

enum CampName {
  fiveDivideFour,
  gameVsYou,
  unknown,
}
