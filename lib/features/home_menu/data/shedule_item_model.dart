class SheduleItemModel {
  int hours;
  int minutes;
  String text;

  SheduleItemModel({required this.hours, required this.minutes, required this.text});

  SheduleItemModel.fromJson(Map<String, dynamic> json) :
    hours = json["hours"],
    minutes = json["minutes"],
    text = json['text'];

  Map<String, dynamic> toJson() {
    return {
      'hours': hours,
      'minutes': minutes,
      'text': text,
    };
  }
}
