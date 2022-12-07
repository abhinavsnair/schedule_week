

import 'dart:convert';

import 'package:schedule_week/model/schedule.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefServices {
  // to save the schedule to shared_preferences
  Future<bool> saveSchedulePref(WeeklySchedules weeklySchedules) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final encodedSchedule = jsonEncode(weeklySchedules.schedule);
    if (await sharedPreferences.setString('weekSchedule', encodedSchedule)) {
      return true;
    }
    return false;
  }

  // to retrieve the schedule from shared_preferences
  Future getSchedulePref() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final weekSchedule = sharedPreferences.getString('weekSchedule');
    var decodedSchedule = jsonDecode(weekSchedule!);

    return decodedSchedule;
  }
}