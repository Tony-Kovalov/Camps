import 'dart:convert';

import 'package:camps_program/features/home_menu/data/shedule_item_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SheduleRepo {

  Future<List<SheduleItemModel>> getSheduleData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> items = prefs.getStringList('shedule_items') ?? [];
    return _convertSheduleItemsToModels(items);
  }

  List<SheduleItemModel> _convertSheduleItemsToModels(List<String> items) {
    List<SheduleItemModel> res = [];
    for (String item in items) {
      Map<String, dynamic> decodedItem = jsonDecode(item);
      res.add(SheduleItemModel.fromJson(decodedItem));
    }
    return res;
  }

  saveSheduleData(List<SheduleItemModel> items) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> jsonList = _convertSheduleItemModelsToJson(items);
    prefs.setStringList("shedule_items", jsonList); // todo setStringList returns bool
  }

  List<String> _convertSheduleItemModelsToJson(List<SheduleItemModel> items) {
    List<String> res = [];
    for (SheduleItemModel item in items) {
      Map<String, dynamic> map = item.toJson();
      res.add(jsonEncode(map));
    }
    return res;
  }

}