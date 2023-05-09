import 'package:flutter/material.dart';

import '../../../../app_colors.dart';

class CustomToggle extends StatefulWidget {
  CustomToggle({Key? key, required this.onTap}) : super(key: key);

  Function(List<bool> isSelected) onTap;

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {

  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  isSelected[0] = true;
                  isSelected[1] = false;
                });
                widget.onTap(isSelected);
              },
              child: Container(
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: isSelected[0] ? AppColors.primaryYellow : Colors.white),
                child: const Padding(padding: EdgeInsets.symmetric(vertical: 8), child: Text("таблиця", textAlign: TextAlign.center,)),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected[0] = false;
                  isSelected[1] = true;
                });
                widget.onTap(isSelected);
              },
              child: Container(
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: isSelected[1] ? AppColors.primaryYellow : Colors.white),
                child: const Padding(padding: EdgeInsets.symmetric(vertical: 8), child: Text("фото", textAlign: TextAlign.center,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
