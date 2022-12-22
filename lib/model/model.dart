import 'dart:convert';


class WeeklySchedules {
  final Map<String?, List<String?>> schedule;
  WeeklySchedules({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'schedule': schedule});
  
    return result;
  }

  factory WeeklySchedules.fromMap(Map<String, dynamic> map) {
    return WeeklySchedules(
      schedule: Map<String?, List<String?>>.from(map['schedule']),
    );
  }

  String toJson() => json.encode(toMap());

  factory WeeklySchedules.fromJson(String source) => WeeklySchedules.fromMap(json.decode(source));
}
