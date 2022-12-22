import 'package:flutter/material.dart';
import 'package:parent_child_checkbox/parent_child_checkbox.dart';
import 'package:schedule_week/model/model.dart';
import '../constants/constants.dart';
import '../services/preferd_services.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final _prefServices = PrefServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set your weekly hours'),
        backgroundColor: const Color.fromARGB(255, 137, 17, 184),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Display the Week
            ListView.separated(
              itemCount: weekDays.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(top: 20),
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1,
                  color: Colors.deepPurple[100],
                );
              },
              itemBuilder: (context, index) {
                return ParentChildCheckbox(
                  parentCheckboxColor: Colors.green,
                  childrenCheckboxColor:  const Color.fromARGB(255, 137, 17, 184),
                  parent: Text(
                    weekDays[index].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  children: const [
                    Text('Morning'),
                    Text('Afternoon'),
                    Text('Evening'),
                  ],
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),

            SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.12,
                child: ElevatedButton(
                  onPressed: () {
                    saveSchedule();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 137, 17, 184),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  child: const Text("Save"),
                )),
          ],
        ),
      ),
    );
  }

  // Method called on pressing Save button
  void saveSchedule() async {
    final schedulePref =
        WeeklySchedules(schedule: ParentChildCheckbox.selectedChildrens);

    // if saving was success, return to landing page (also refresh landing page)
    if (await _prefServices.saveSchedulePref(schedulePref)) {
      Navigator.pop(context, true);
    }
  }
}
