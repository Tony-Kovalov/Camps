import 'package:flutter/material.dart';

class SheduleItem extends StatefulWidget {
  SheduleItem({Key? key,
    required this.time,
    this.text = "",
    required this.textEditingController,
    required this.onRemoved,
    required this.onFocusChange,
    required this.onChangedText,
    required this.onChangedTime,
  }) : super(key: key) {
   textEditingController.text = text;
  }

  TimeOfDay time;
  String text;
  TextEditingController textEditingController;
  Function() onRemoved;
  Function(bool hasFocus) onFocusChange;
  Function(String str) onChangedText;
  Function(TimeOfDay newTime) onChangedTime;

  @override
  State<SheduleItem> createState() => _SheduleItemState();
}

class _SheduleItemState extends State<SheduleItem> {

  bool isSwiped = false;
  bool canEdit = true;
  var focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: !isSwiped,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () async {
              TimeOfDay newTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay(hour: widget.time.hour, minute: widget.time.minute),
                initialEntryMode: TimePickerEntryMode.input,
              ) ??
                  TimeOfDay.fromDateTime(DateTime(
                      DateTime.now().year, DateTime.now().month, DateTime.now().month, DateTime.now().day, 8));
              setState(() {
                widget.time = newTime;
              });
              widget.onChangedTime(newTime);
            },
            child: Text(
              timeToText(widget.time),
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 4),
        Flexible(
          child: GestureDetector(
            onPanUpdate: (details) {
              // Swiping in right direction.
              if (details.delta.dx > 0) {
                setState(() {
                  isSwiped = false;
                });
              }
              // Swiping in left direction.
              if (details.delta.dx < -10) {
                setState(() {
                  isSwiped = true;
                });
              }
            },
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Focus(
                  onFocusChange: (hasFocus) {
                    setState(() {
                      canEdit = hasFocus;
                    });
                    widget.onFocusChange(hasFocus);
                  },
                  child: TextField(
                    onChanged: (str) {
                      widget.onChangedText(str);
                    },
                    style: const TextStyle(fontSize: 20),
                    controller: widget.textEditingController,
                    focusNode: focusNode,
                    enabled: canEdit,
                    maxLines: null,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration.collapsed(
                      filled: true, //<-- SEE HERE
                      fillColor: Colors.white, hintText: 'Введіть', //<-- SEE HERE
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () {
            focusNode.requestFocus();
            setState(() {
              canEdit = true;
              isSwiped = false;
            });
          },
          child: Visibility(
            visible: isSwiped,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.edit_note_outlined),
              ),
            ),
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () {
            setState(() {
              isSwiped = false;
            });
            widget.onRemoved();
          },
          child: Visibility(
            visible: isSwiped,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.restore_from_trash_outlined,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  String timeToText(TimeOfDay time) {
    String res = "";
    if (time.hour < 9) {
      res += "0";
    }
    res += "${time.hour}:";
    if (time.minute < 9) {
      res += "0";
    }
    res += time.minute.toString();
    return res;
  }
}
