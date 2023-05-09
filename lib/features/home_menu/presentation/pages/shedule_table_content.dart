import 'package:camps_program/app_colors.dart';
import 'package:camps_program/features/home_menu/data/shedule_repo.dart';
import 'package:camps_program/features/home_menu/presentation/widgets/shedule_item.dart';
import 'package:flutter/material.dart';

import '../../data/shedule_item_model.dart';

class SheduleTableContent extends StatefulWidget {
  const SheduleTableContent({Key? key}) : super(key: key);

  @override
  State<SheduleTableContent> createState() => _SheduleTableContentState();
}

class _SheduleTableContentState extends State<SheduleTableContent> {

  List<TextEditingController> textEditingControllers = [];
  List<SheduleItemModel> sheduleData = [];
  int custom_index = 0;

  @override
  void initState() {
    super.initState();
    updateDataFromRepo();
  }

  updateDataFromRepo() async {
    List<SheduleItemModel> data = await SheduleRepo().getSheduleData();
    for (int i = 0; i < data.length; i++) {
      textEditingControllers.add(TextEditingController());
    }
    setState(() {
      sheduleData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: sheduleData.length + 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            if (sheduleData.length != index)
            Column(
              children: [
                const SizedBox(height: 4),
                SheduleItem(
                  index: custom_index++,
                  time: TimeOfDay(hour: sheduleData[index].hours, minute: sheduleData[index].minutes),
                  text: sheduleData[index].text,
                  textEditingController: textEditingControllers[index],
                  onFocusChange: (hasFocus) async {
                    SheduleRepo().saveSheduleData(sheduleData);
                  },
                  onChanged: (str) {
                    sheduleData[index].text = textEditingControllers[index].text;
                  },
                  onRemoved: (indexToRemove) {
                    setState(() {
                      sheduleData.removeAt(index);
                    });
                    SheduleRepo().saveSheduleData(sheduleData);
                    // int indexInList = -1;
                    // for (int i = 0; i < sheduleItems.length; i++) {
                    //   if (sheduleItems[i] is SheduleItem && (sheduleItems[i] as SheduleItem).index == indexToRemove) {
                    //     indexInList = i;
                    //     break;
                    //   }
                    // }
                    // if (indexInList != -1) {
                    //   sheduleItems.removeAt(indexInList - 1);
                    //   sheduleItems.removeAt(indexInList);
                    // }
                  },
                ),
              ],
            ),
            if (index == sheduleData.length)
              Column(
                children: [
                  const SizedBox(height: 4),
                  GestureDetector(
                    onTap: () {
                      textEditingControllers.add(TextEditingController());
                      setState(() {
                        sheduleData.add(SheduleItemModel(hours: TimeOfDay.now().hour, minutes: TimeOfDay.now().minute, text: ""));
                      });
                      SheduleRepo().saveSheduleData(sheduleData);
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration:
                              BoxDecoration(color: AppColors.primaryYellow, borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4), child: Icon(Icons.add)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
          ],
        );
      },
    );
  }

  Widget getLastSheduleItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          sheduleData.add(SheduleItemModel(hours: TimeOfDay.now().hour, minutes: TimeOfDay.now().minute, text: ""));
        });
      },
      child: Container(
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(color: AppColors.primaryYellow, borderRadius: BorderRadius.circular(5)),
            child: const Padding(padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4), child: Icon(Icons.add)),
          ),
        ),
      ),
    );
  }
}
