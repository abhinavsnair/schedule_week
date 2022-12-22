import 'dart:convert';
import 'package:schedule_week/model/model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefServices {
  //  save
  Future<bool> saveSchedulePref(WeeklySchedules weeklySchedule) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final encodedSchedule = jsonEncode(weeklySchedule.schedule);
    if (await sharedPreferences.setString('weekSchedule', encodedSchedule)) {
      return true;
    }
    return false;
  }

  // get
  Future getSchedulePref() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final weekSchedule = sharedPreferences.getString('weekSchedule');
    var decodedSchedule = jsonDecode(weekSchedule!);

    return decodedSchedule;
  }
}
